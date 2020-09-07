#lang racket
(require racket/set racket/stream)
(require racket/fixnum)
(require racket/trace)
(require "interp-R0.rkt")
(require "interp-R1.rkt")
(require "interp.rkt")
(require "utilities.rkt")
(provide (all-defined-out))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; R0 examples
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; The following compiler pass is just a silly one that doesn't change
;; anything important, but is nevertheless an example of a pass. It
;; flips the arguments of +. -Jeremy
(define (flip-exp e)
  (match e
    [(Var x) e]
    [(Prim 'read '()) (Prim 'read '())]
    [(Prim '- (list e1)) (Prim '- (list (flip-exp e1)))]
    [(Prim '+ (list e1 e2)) (Prim '+ (list (flip-exp e2) (flip-exp e1)))]
    ))

(define (flip-R0 e)
  (match e
    [(Program info e) (Program info (flip-exp e))]
    ))


;; Next we have the partial evaluation pass described in the book.
(define (pe-neg r)
  (match r
    [(Int n) (Int (fx- 0 n))]
    [else (Prim '- (list r))]))

(define (pe-add r1 r2)
  (match* (r1 r2)
    [((Int n1) (Int n2)) (Int (fx+ n1 n2))]
    [(_ _) (Prim '+ (list r1 r2))]))

(define (pe-exp e)
  (match e
    [(Int n) (Int n)]
    [(Prim 'read '()) (Prim 'read '())]
    [(Prim '- (list e1)) (pe-neg (pe-exp e1))]
    [(Prim '+ (list e1 e2)) (pe-add (pe-exp e1) (pe-exp e2))]
    ))

(define (pe-R0 p)
  (match p
    [(Program info e) (Program info (pe-exp e))]
    ))

(define (test-pe p)
  (assert "testing pe-R0"
     (equal? (interp-R0 p) (interp-R0 (pe-R0 p)))))

(test-pe (parse-program `(program () (+ 10 (- (+ 5 3))))))
(test-pe (parse-program `(program () (+ 1 (+ 3 1)))))
(test-pe (parse-program `(program () (- (+ 3 (- 5))))))

;;;;;;
;Helpers
;;;;;

(trace-define (match-alist var alist)
  [cond [(empty? alist) #f]
        [(eq? var (car (car alist)))(cdr (car alist))]
        [else (match-alist var (cdr alist))]])

;Used to turn '((var . alist) (var . alist)...) into ((var var ...) . alist) where the second alist is the combination of all the other first alists
(define (split-pairs plist)
  (cond [(empty? plist) '(() . ())]
        [else (let [(rest-plist (split-pairs (cdr plist)))] `(,(cons (car (car plist)) (car rest-plist)) . ,(append (cdr (car plist)) (cdr rest-plist))))]))


(define (last-value ls)
  (cond [(empty? ls) #f]
        [(empty? (cdr ls)) (car ls)]
        [else (last-value (cdr ls))]))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HW1 Passes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(define (uniquify-exp symtab)
  (lambda (e)
    (match e
      [(Var x)
       (Var (match-alist x symtab))]
      [(Int n) (Int n)]
      [(Let x e body)
      (let ([y (gensym x)])
        (Let y ((uniquify-exp symtab) e) ((uniquify-exp (cons `(,x . ,y) symtab)) body)))]
      [(Prim op es)
       (Prim op (for/list ([e es]) ((uniquify-exp symtab) e)))]
      )))

;; uniquify : R1 -> R1
(define (uniquify p)
  (match p
    [(Program info e)
     (Program info ((uniquify-exp '()) e))]
    ))

;Expands an alist into let expression binding each variable to its associated expression
(define (expand-alist alist base)
  (cond [(empty? alist) base]
        [else (Let (car (car alist)) (cdr (car alist)) (expand-alist (cdr alist) base))]))

  
(define (rco-atom e)
  (match e
      [(Var x) (values (Var x) '())]
      [(Int n) (values (Int n) '())]
      [(Let x e body)
       (values (Let x (rco-exp e) (rco-exp body)) '())]
      [(Prim op es)
       (let [(tmp (gensym "tmp"))]
        (values (Var tmp) `((,tmp . ,(rco-exp (Prim op es))))))]
      ))

(define (rco-exp e)
  (match e
      [(Var x) (Var x)]
      [(Int n) (Int n)]
      [(Let x e body)
       (Let x (rco-exp e) (rco-exp body))]
      [(Prim op es)
       (let [(exps (split-pairs (for/list ([e es]) (begin (define-values (var alist) (rco-atom e)) `(,var . ,alist)))))] (expand-alist (cdr exps) (Prim op (car exps))))]
      ))

;; remove-complex-opera* : R1 -> R1
(define (remove-complex-opera* p)
  (match p
    [(Program info e)
     (Program info (rco-exp e))]
    ))


;;Assigns a variable to whatever an expression would return then adds the tail on
(define (do-assignment exp var tail)
  (match exp
    [(Return (Int n)) (Seq (Assign var (Int n)) tail)]
    [(Return (Var x)) (Seq (Assign var (Var x)) tail)]
    [(Return (Prim op es)) (Seq (Assign var (Prim op es)) tail)]
    [(Seq stmt seq-tail) (Seq stmt (do-assignment seq-tail var tail))]))

(define (explicate-assign exp var tail)
  (begin (define-values (exp-tail exp-vars) (explicate-tail exp)) (define-values (tail-tail tail-vars) (explicate-tail tail))
         (values (do-assignment exp-tail var tail-tail) (append exp-vars tail-vars))))

(define (explicate-tail e)
  (match e
    [(Var x) (values (Return (Var x)) '())]
      [(Int n) (values (Return (Int n)) '())]
      [(Let x e body)
       (begin (define-values (tail vars) (explicate-assign e (Var x) body)) (values tail (cons (Var x) vars)))]
      [(Prim op es)
       (values (Return (Prim op es)) '())]
      ))

;; explicate-control : R1 -> C0
(define (explicate-control p)
  (match p
    [(Program info e)
     (begin (define-values (tail vars) (explicate-tail e)) (Program `((locals . ,vars)) (CFG `((start . ,tail)))))]
    ))

(define (slct-atom e)
    (match e
     [(Var x) (Var x)]
     [(Int x) (Imm x)]))
        
(define (slct-stmt tail)
  (match tail
    [(Assign (Var x) exp)
     (match exp
       [(Int n) (list (Instr 'movq (list (Imm n) (Var x))))]
       [(Var y) (list (Instr 'movq (list (Var y) (Var x))))]
       [(Prim 'read es) (list (Callq 'read_int) (Instr 'movq (list (Reg 'rax) (Var x))))]
       [(Prim '- (list y)) #:when (eq? (Var x) y) (list (Instr 'negq (list (Var x))))]
       [(Prim '- (list y)) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'negq (list (Var x))))]
       [(Prim '+ (list y v)) #:when (eq? (Var x) y) (list (Instr 'addq (list (slct-atom v) (Var x))))]
       [(Prim '+ (list y v)) #:when (eq? (Var x) v) (list (Instr 'addq (list (slct-atom y) (Var x))))]
       [(Prim '+ (list y v)) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'addq (list (slct-atom v) (Var x))))])]))

(define (slct-tail e)
  (match e
    [(Seq s t) (append (slct-stmt s) (slct-tail t))]
    [(Return r)
     (match r
       [(Int n) (list (Instr 'movq (list (Imm n) (Reg 'rax))) (Jmp 'conclusion))]
       [(Var y) (list (Instr 'movq (list (Var y) (Reg 'rax))) (Jmp 'conclusion))]
       [(Prim 'read es) (list (Callq 'read_int))  (Jmp 'conclusion)]
       [(Prim '- (list y)) (list
                            (Instr 'movq (list (slct-atom y) (Reg 'rax)))
                            (Instr 'negq (list (Reg 'rax)))
                            (Jmp 'conclusion))]
       [(Prim '+ (list y v)) (list
                              (Instr 'movq (list (slct-atom y) (Reg 'rax)))
                              (Instr 'addq (list (slct-atom v) (Reg 'rax)))
                              (Jmp 'conclusion))])]))

(define (select-instructions p)
  (match p
    [(Program info (CFG B-list))
     (Program info (CFG (map (lambda (x) `(,(car x) . ,(Block '() (slct-tail (cdr x))))) B-list)))]))                        

(define (generate-assignments locals start)
  (cond [(empty? locals) '()]
        [else (match (car locals)
                [(Var v) (cons `(,v . ,start) (generate-assignments (cdr locals) (+ start (- 8))))])]))

(define (assign-instr inst homes)
  (match inst
    [(Var v) (Deref 'rbp (match-alist v homes))]
    [(Instr inst args) (Instr inst (map (lambda (i) (assign-instr i homes)) args))]
    [x x]))

(define (assign-block instrs homes)
  (map (lambda (i) (assign-instr i homes)) instrs))


;; assign-homes : pseudo-x86 -> pseudo-x86
(define (assign-homes p)
  (match p
    [(Program info (CFG B-list))
     (let [(homes (generate-assignments (match-alist 'locals info) -8))]
     (Program `((stack-size . ,(- (cdr (last-value homes))))) (CFG (map (lambda (x) (match x
     [`(,label . ,(Block info instrs)) `(,label . ,(Block info (assign-block instrs homes)))])) B-list))))]))

;; patch-instructions : psuedo-x86 -> x86
(define (patch-instructions p)
  (error "TODO: code goes here (patch-instructions)"))

;; print-x86 : x86 -> string
(define (print-x86 p)
  (error "TODO: code goes here (print-x86)"))
