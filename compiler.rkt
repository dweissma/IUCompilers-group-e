#lang racket
(require racket/set racket/stream)
(require racket/fixnum)
(require "interp-R0.rkt")
(require "interp-R1.rkt")
(require "interp.rkt")
(require "utilities.rkt")
(provide (all-defined-out))
(require graph)
(require racket/trace)

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

(define (match-alist var alist)
  [cond [(empty? alist) #f]
        [(eq? var (car (car alist)))(cdr (car alist))]
        [else (match-alist var (cdr alist))]])

(define (rev-match-alist var alist)
  [cond [(empty? alist) #f]
        [(equal? var (cdr (car alist))) (car (car alist))]
        [else (rev-match-alist var (cdr alist))]])

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
       (let [(tmp (gensym "tmp"))]
         (values (Var tmp) `((,tmp . ,(Let x (rco-exp e) (rco-exp body))))))]
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
       [(Prim 'read es) (list (Callq 'read_int)  (Jmp 'conclusion))]
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

(define (written-to instr)
  (match instr
    [(Instr 'negq (list (Var x))) (set x)]
    [(Instr i `(,arg ,(Var x))) (set x)]
    [x (set)]))

(define (read-from instr)
  (match instr
    [(Instr 'negq (list (Var x))) (set x)]
    [(Instr 'addq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'addq `(,arg ,(Var x))) (set x)]
    [(Instr i `(,(Var x) ,arg)) (set x)]
    [x (set)]))

(define (compute-live-afters instrs)
  (cond [(empty? instrs) `(,(set))]
        [else (let [(live-afters (compute-live-afters (cdr instrs)))] (cons
                                                                       (set-union (set-subtract (car live-afters) (written-to (car instrs))) (read-from (car instrs)))
                                                                       live-afters))]))

(define (uncover-live p)
  (match p
    [(Program info (CFG B-list))
     (Program info (CFG (map (lambda (x)  (match x
     [`(,label . ,(Block info instrs)) `(,label . ,(Block (cons `(live-afters . ,(compute-live-afters instrs)) info) instrs))])) B-list)))]))

;Print the live-after sets
(define (print-lives p)
  (match p
    [(Program info (CFG B-list))
     (map (lambda (x) (match x
                        [`(,label . ,(Block info instrs)) (print (match-alist 'live-afters info))])) B-list)]))

(define all-registers (list 'rax 'r11 'r15 'rbp
                             'rcx 'rdx 'rsi 'rdi
                             'r8 'r9 'r10 'rbx
                             'r12 'r13 'r14))

(define caller-registers '(rdx rcx rsi rdi r8 r9 r10 r11))

(define (add-from-instr graph instr live-after)
  (match instr
    [(Instr 'addq `(,arg ,(Var y))) (for ([x live-after] #:when (not (equal? x y))) (add-edge! graph x y))]
    [(Instr 'addq `(,arg ,(Reg r)))#:when (not (eq? r 'rax)) (for ([x live-after]) (add-edge! graph x r))]
    [(Callq label) (for ([x live-after]) (for ([y caller-registers]) (add-edge! graph x y)))]
    [(Instr 'movq `(,(Var z) ,(Var y))) (for ([x live-after] #:when (and (not (equal? x y)) (not (equal? x z)))) (add-edge! graph x y))]
    [(Instr 'movq `(,(Var z) ,(Reg r))) #:when (not (eq? r 'rax)) (for ([x live-after] #:when (not (equal? x z))) (add-edge! graph x r))]
    [(Instr 'movq `(,(Reg r) ,(Var y))) #:when (not (eq? r 'rax)) (for ([x live-after] #:when (not (equal? x y)))  (add-edge! graph x y))]
    [(Instr 'movq `(,(Reg r1) ,(Reg r2))) #:when (and (not (eq? r1 'rax)) (not (eq? r2 'rax))) (for ([x live-after]) (add-edge! graph x r2))]
    [(Instr 'movq `(,arg ,(Var y))) (for ([x live-after] #:when (not (equal? x y)))  (add-edge! graph x y))]
    [(Instr 'movq `(,arg ,(Reg r))) #:when (not (eq? r 'rax)) (for ([x live-after]) (add-edge! graph x r))]
    [else graph]))


(define (add-block-to-graph graph instrs lives)
  (cond [(empty? instrs) graph]
        [else (begin (add-from-instr (add-block-to-graph graph (cdr instrs) (cdr lives)) (car instrs) (car lives)) graph)]))

(define (graph-from-blist B-list locals)
  (cond [(empty? B-list) (begin
                           (define g (unweighted-graph/undirected '()))
                           (for ([x (cdr all-registers)]) (add-vertex! g x))
                           (for ([x locals]) (add-vertex! g x))
                           g)]
        [else (match (car B-list)
                [`(,label . ,(Block info instrs)) (add-block-to-graph (graph-from-blist (cdr B-list) locals) instrs (cdr (match-alist 'live-afters info)))])]))
                                                                             

(define (build-interference p)
  (match p
    [(Program info (CFG B-list))
     (let [(igraph (graph-from-blist B-list (match-alist 'locals info)))] (Program (cons `(interference-graph . ,igraph) info) (CFG B-list)))]))

(define (extract-interference p)
  (match p
    [(Program info (CFG B-list))
     (match-alist 'interference-graph info)]))

(define reg-colors
  '((rax . -1) (rcx . 0) (rdx . 1) (rsi . 2) (rdi . 3) (r8 . 4) (r9 . 5) (r10 . 6)
    (rbx . 7) (r12 . 8) (r13 . 9) (r14 . 10) (r11 . 11) (r15 . 12) (rbp . 13)))
    

(define (in-alist alist key)
  (cond [(empty? alist) #f]
        [(or (equal? key (car (car alist))) (in-alist (cdr alist) key))]))

;Add register colors to the registers already in the graph
(define (preprocess-graph g)
  (begin (for ([x (get-vertices g)] #:when (match-alist x reg-colors)) (rename-vertex! g x `(,x . ,(match-alist x reg-colors))))
         g))

(define (smallest-missing-nat ls n)
  (cond [(false? (member n ls)) n]
        [else (smallest-missing-nat ls (add1 n))]))

(define (color-graph-accum g locals accum)
  (let [(vars (filter (lambda (x) (not (pair? x))) (get-vertices g)))]
    (cond [(empty? vars) accum] ;no colors needed everything is already colored
          [else (let [(most-constrained (car (sort vars #:key (lambda (v) (length (filter pair? (get-neighbors g v)))) >)))]
                  (let [(used-colors (map cdr (filter pair? (get-neighbors g most-constrained))))]
                    (let [(color (smallest-missing-nat used-colors 0))]
                    (begin (rename-vertex! g most-constrained `(,most-constrained . ,color))
                           (color-graph-accum g locals (cons `(,most-constrained . ,color) accum))))))])))
                    

(define (color-graph g locals)
  (color-graph-accum g locals '()))

(define (compute-stack-size homes msf)
  (cond [(empty? homes) msf]
        [else (match (car homes)
                [`(,var . ,(Deref reg loc)) (if (> (- loc) msf) (compute-stack-size (cdr homes) (- loc))
                                                (compute-stack-size (cdr homes) msf))]
                [x (compute-stack-size (cdr homes) msf)])]))
  

(define (allocate-registers p)
  (match p
    [(Program info (CFG B-list))
     (let [(homes (generate-assignments (match-alist 'locals info) (color-graph (preprocess-graph (match-alist 'interference-graph info)) (match-alist 'locals info))))]
     (Program `((stack-size . ,(compute-stack-size homes 0))) (CFG (map (lambda (x) (match x
     [`(,label . ,(Block info instrs)) `(,label . ,(Block info (assign-block instrs homes)))])) B-list))))]))
   
(define (assign-nat n)
  (cond [(> n 13) (Deref 'rbp (* (- n 13) (- 8)))]
        [else (Reg (rev-match-alist n reg-colors))]))
     
(define (generate-assignments locals colors)
  (cond [(empty? locals) '()]
        [else (match (car locals)
                [(Var v) (cons `(,v . ,(assign-nat (match-alist v colors))) (generate-assignments (cdr locals) colors))])]))

(define (assign-instr inst homes)
  (match inst
    [(Var v) (match-alist v homes)]
    [(Instr inst args) (Instr inst (map (lambda (i) (assign-instr i homes)) args))]
    [x x]))

(define (assign-block instrs homes)
  (map (lambda (i) (assign-instr i homes)) instrs))


;; assign-homes : pseudo-x86 -> pseudo-x86 Deprecated in favor of allocate-registers
(define (assign-homes p)
  (match p
    [(Program info (CFG B-list))
     (let [(homes (generate-assignments (match-alist 'locals info) -8))]
     (Program `((stack-size . ,(- (let [(size (last-value homes))] (if (false? size) 0 (cdr size)))))) (CFG (map (lambda (x) (match x
     [`(,label . ,(Block info instrs)) `(,label . ,(Block info (assign-block instrs homes)))])) B-list))))]))

(define (do-patch  instruction)
  (match instruction
    [(Instr e (list (Deref  reg off) (Deref reg2 off2)))
         (list (Instr 'movq (list (Deref reg off) (Reg 'rax)))
               (Instr e (list (Reg 'rax) (Deref reg2 off2))))]
    [else (list instruction)]))

(define (patch e)
  (match e
    [(Block '() exp) (Block '() (append-map do-patch exp))]
    ))

(define (patch-instructions p)
   (match p
    [(Program info (CFG B-list))
     (Program info
              (CFG
               (map
                (lambda (x) `(,(car x) . ,(patch (cdr x)))) B-list)))]))
       

;; generates an x86 representation of the main clause
(define (make-main stack-size)
  (Block '() (if (zero? stack-size) (list (Jmp 'start)) (list (Instr 'pushq (list (Reg 'rbp))) (Instr 'movq (list (Reg 'rsp) (Reg 'rbp))) (Instr 'subq (list (Imm (+ 8 stack-size)) (Reg 'rsp))) (Jmp 'start)))))

;; generates an x86 representation of the conclusion

(define (make-conclusion stack-size)
  (Block '() (if (zero? stack-size) (list (Retq)) (list (Instr 'addq (list (Imm (+ 8 stack-size)) (Reg 'rsp))) (Instr 'popq (list (Reg 'rbp))) (Instr 'retq '())))))

;;Turns a block and its label into a string
(define (stringify-block label block)
  (format "~a:~n~a" (if (eq? 'main label) (format ".globl main~nmain") label) (match block
                              ([Block info instrs] (foldr (lambda (x rs) (string-append (format "~a" x) rs)) "" instrs)))))

;;Converts an alist of labeled x86 blocks to their string representation
(define (x86-to-string blocks)
  (foldr (lambda (x rs) (string-append (stringify-block (car x) (cdr x)) rs)) "" blocks))

;; print-x86 : x86 -> string
(define (print-x86 p)
  (match p
    [(Program info (CFG B-list)) (let [(stack-size (match-alist 'stack-size info))]
                                   (let [(main (make-main stack-size))]
                                     (let [(conclusion (make-conclusion stack-size))]
                                       (x86-to-string (append B-list `((main . ,main) (conclusion . ,conclusion))))
                                       )))]))
