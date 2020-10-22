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

(define (remove-duplicates ls)
  (set->list (list->set ls)))

;Used to turn '((var . alist) (var . alist)...) into ((var var ...) . alist) where the second alist is the combination of all the other first alists
(define (split-pairs plist)
  (cond [(empty? plist) '(() . ())]
        [else (let [(rest-plist (split-pairs (cdr plist)))] `(,(cons (car (car plist)) (car rest-plist)) . ,(append (cdr (car plist)) (cdr rest-plist))))]))


(define (last-value ls)
  (cond [(empty? ls) #f]
        [(empty? (cdr ls)) (car ls)]
        [else (last-value (cdr ls))]))

(define (get-next-blocks instrs)
  (cond [(empty? instrs) '()]
        [else (match (car instrs)
                [(JmpIf cond lbl) (cons lbl (get-next-blocks (cdr instrs)))]
                [(Jmp lbl) #:when (not (eq? lbl 'conclusion)) (cons lbl (get-next-blocks (cdr instrs)))]
                [x (get-next-blocks (cdr instrs))])]))

(define (get-edges blocks)
  (cond [(empty? blocks) '()]
        [else (match (car blocks)
                [`(,label . ,(Block info instrs)) (let ([nexts (get-next-blocks instrs)])
                                       (append (map (lambda (next) `(,label ,next)) nexts) (get-edges (cdr blocks))))])]))

(define (CFG->graph cfg)
  (match cfg
    [(CFG ls) (let ([g (unweighted-graph/directed (get-edges ls))]) (if (not (has-vertex? g 'start))
                                                                        (begin (add-vertex! g 'start)
                                                                               g)
                                                                        g))]))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Passes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (type-check-exp env e)
  (match e
    [(Var x)
     (match-alist x env)]
    [(Int n) 'Integer]
    [(Bool bool) 'Boolean]
    [(Let x e body)
     (type-check-exp (cons `(,x . ,(type-check-exp env e)) env) body)]
    [(Prim 'read es)
     'Integer]
    [(Prim op es) #:when (index-of '(- +) op) (if (andmap (lambda (e) (eq? 'Integer (type-check-exp env e))) es)
                                                  'Integer
                                                  (error (format "Arthimetic operators only operate on integers (got ~a) with env: ~a" (map (lambda (x) (type-check-exp env x)) es) env)))]
    [(Prim op es) #:when (index-of '(and or not) op) (if (andmap (lambda (e) (eq? 'Boolean (type-check-exp env e))) es)
                                                         'Boolean
                                                         (error "Logical operators only operate on booleans"))]
    [(Prim cmp es) #:when (index-of '(eq? < <= > >=) cmp) (let ([t1 (type-check-exp env (car es))] [t2 (type-check-exp env (cadr es))])
                      (if (eq? t1 t2)
                          'Boolean
                          (error "comparison between a boolean and integer not supported")))]
    [(If cond exp else) (let ([t1 (type-check-exp env exp)] [t2 (type-check-exp env else)])
                          (if (eq? t1 t2)
                              (if (eq? 'Boolean (type-check-exp env cond))
                                  t1
                                  (error "If condition must be a Boolean"))
                              (error "Both if cases must be the same type")))]
    ))


(define (type-check-R2 p)
  (match p
    [(Program info e)
     (if (eq? 'Integer (type-check-exp '() e))
     (Program info e)
     (error 'type-check-R2 "R2 programs should type check to an integer"))]))

(define (shrink-exp e)
  (match e
    [(Prim '- `(,first ,second)) (Prim '+ `(,(shrink-exp first) ,(Prim '- (list (shrink-exp second)))))]
    [(Prim 'and `(,first ,second)) (let ([t1 (gensym 'tmp)])
                                     (Let t1 (shrink-exp first)
                                          (If (Var t1) (shrink-exp second)  (Bool #f))))]
    [(Prim 'or `(,first ,second)) (let ([t1 (gensym 'tmp)])
                                     (Let t1 (shrink-exp first)
                                          (If (Var t1) (Bool #t) (shrink-exp second))))]
    [(Prim '> `(,first ,second)) (let ([t1 (gensym 'tmp)] [t2 (gensym 'tmp)])
                                   (Let t1 (shrink-exp first)
                                        (Let t2 (shrink-exp second)
                                             (If (Prim 'eq? (list (Var t1) (Var t2))) (Bool #f)
                                                 (Prim 'not (list (Prim '< (list (Var t1) (Var t2)))))))))]
    [(Prim '>= `(,first ,second)) (shrink-exp (Prim 'not (list (Prim '< (list (shrink-exp first) (shrink-exp second))))))]
    [(Prim '<= `(,first ,second)) (let ([t1 (gensym 'tmp)] [t2 (gensym 'tmp)])
                                   (Let t1 (shrink-exp first)
                                        (Let t2 (shrink-exp second)
                                             (If (Prim 'eq? (list (Var t1) (Var t2))) (Bool #t)
                                                 (Prim '< (list (Var t1) (Var t2)))))))]
    [(Prim op es) (Prim op (map shrink-exp es))]
    [(Let x e body) (Let x (shrink-exp e) (shrink-exp body))]
    [(If cond exp else) (If (shrink-exp cond) (shrink-exp exp) (shrink-exp else))]
    [x x]))
    
    
  
(define (shrink p)
  (match p
    [(Program info e)
     (Program info (shrink-exp e))]
    ))


(define (uniquify-exp symtab)
  (lambda (e)
    (match e
      [(Var x)
       (Var (match-alist x symtab))]
      [(Int n) (Int n)]
      [(Bool bool) (Bool bool)]
      [(Let x e body)
      (let ([y (gensym x)])
        (Let y ((uniquify-exp symtab) e) ((uniquify-exp (cons `(,x . ,y) symtab)) body)))]
      [(Prim op es)
       (Prim op (for/list ([e es]) ((uniquify-exp symtab) e)))]
      [(If cond exp else) (If ((uniquify-exp symtab) cond) ((uniquify-exp symtab) exp) ((uniquify-exp symtab) else))]
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
      [(Bool bool) (values (Bool bool) '())]
      [(Let x e body)
       (let [(tmp (gensym "tmp"))]
         (begin (define-values (e-val e-alist) (rco-atom e))
                (values (Var tmp) (append e-alist  `((,tmp . ,(Let x e-val (rco-exp body))))))))]
      [(Prim op es)
       (let [(tmp (gensym "tmp")) (exps (split-pairs (for/list ([e es]) (begin (define-values (var alist) (rco-atom e)) `(,var . ,alist)))))]
        (values (Var tmp) (append (cdr exps) `((,tmp . ,(Prim op (car exps)))))))]
      [(If cond exp else)
       (let [(tmp (gensym "tmp"))]
         (begin (define-values (cond-val cond-alist) (rco-atom cond))
                (define-values (exp-val exp-alist) (rco-atom exp))
                (define-values (else-val else-alist) (rco-atom else))
         (values (Var tmp) (append cond-alist exp-alist else-alist `((,tmp . ,(rco-exp (If cond-val exp-val else-val))))))))]
      ))

(define (rco-exp e)
  (match e
      [(Var x) (Var x)]
      [(Int n) (Int n)]
      [(Bool bool) (Bool bool)]
      [(Let x e body)
       (begin (define e-val (rco-exp e))
              (Let x e-val (rco-exp body)))]
      [(Prim op es)
       (let [(exps (split-pairs (for/list ([e es]) (begin (define-values (var alist) (rco-atom e)) `(,var . ,alist)))))] (expand-alist (cdr exps) (Prim op (car exps))))]
      [(If cond exp else)
       (begin (define exp-var (rco-exp exp))
              (define else-var (rco-exp else))
              (define cond-var (rco-exp cond))
              (If cond-var exp-var else-var))]
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
    [(Return (Bool bool)) (Seq (Assign var (Bool bool)) tail)]
    [(Return (Prim op es)) (Seq (Assign var (Prim op es)) tail)]
    [(Seq stmt seq-tail) (Seq stmt (do-assignment seq-tail var tail))]))

(define (explicate-assign exp var tail cgraph)
  (match exp
    [(If pred then else)
     (let ([tail-block (gensym "block")])
       (begin (define-values (then-exp then-vars then-graph) (explicate-assign then var (Goto tail-block)  cgraph))
              (define-values (else-exp else-vars else-graph) (explicate-assign else var (Goto tail-block)  then-graph))
              (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then-exp else-exp else-graph))
              (values pred-exp (remove-duplicates (append then-vars else-vars pred-vars)) (cons `(,tail-block . ,tail) pred-cgraph))))]
    [(Let x exp body) (begin (define-values (exp-body body-vars body-graph) (explicate-assign body var tail cgraph))
                             (define-values (body-tail vars newgraph) (explicate-assign exp (Var x) exp-body body-graph))
                             (values body-tail (cons (Var x) (remove-duplicates (append body-vars vars))) newgraph))]
    [x (begin (define-values (exp-tail exp-vars exp-graph) (explicate-tail exp cgraph))
         (values (do-assignment exp-tail var tail) exp-vars exp-graph))
  ]))

(define (explicate-pred e true-blk false-blk cgraph)
  (match e
    [(Bool #t) (values true-blk '() cgraph)]
    [(Bool #f) (values false-blk '() cgraph)]
    [(Var x) (let ([then-lbl (gensym "block")] [else-lbl (gensym "block")])
     (values (IfStmt (Prim 'eq? (list (Var x) (Bool #t))) (Goto then-lbl) (Goto else-lbl)) '() (cons `(,then-lbl . ,true-blk)
                                                                                                                    (cons `(,else-lbl . ,false-blk) cgraph))))]
    [(Prim 'not (list var)) (begin (define-values (result result-vars result-cgraph) (explicate-pred var false-blk true-blk cgraph))
                                   (values result result-vars result-cgraph))]
    [(Prim cmp es) (let ([then-lbl (gensym "block")] [else-lbl (gensym "block")])
     (values (IfStmt (Prim cmp es) (Goto then-lbl) (Goto else-lbl)) '() (cons `(,then-lbl . ,true-blk)
                                                                                (cons `(,else-lbl . ,false-blk) cgraph))))]
    [(Let x exp body) (begin (define-values (exp-body body-vars body-graph) (explicate-pred body true-blk false-blk cgraph))
                             (define-values (tail vars tail-graph) (explicate-assign exp (Var x) exp-body body-graph)) (values tail (cons (Var x) (remove-duplicates (append body-vars vars))) tail-graph))]
    [(If pred then else) (begin (define-values (then-exp then-vars then-cgraph) (explicate-pred then true-blk false-blk cgraph))
                                  (define-values (else-exp else-vars else-cgraph) (explicate-pred else true-blk false-blk then-cgraph))
                                  (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then-exp else-exp else-cgraph))
                                  (values pred-exp (remove-duplicates (append then-vars else-vars pred-vars)) pred-cgraph))]
    ))
                                  
    

(define (explicate-tail e cgraph)
  (match e
      [(Var x) (values (Return (Var x)) '() cgraph)]
      [(Int n) (values (Return (Int n)) '() cgraph)]
      [(Bool bool) (values (Return (Bool bool)) '() cgraph)]
      [(Let x e body)
       (begin (define-values (exp-body body-vars body-graph) (explicate-tail body cgraph))
         (define-values (tail vars newgraph) (explicate-assign e (Var x) exp-body body-graph))
         (values tail (cons (Var x) (remove-duplicates (append body-vars vars))) newgraph))]
      [(Prim op es)
       (values (Return (Prim op es)) '() cgraph)]
      [(If pred then else)
          (begin (define-values (then-exp then-vars then-cgraph) (explicate-tail then cgraph))
                 (define-values (else-exp else-vars else-cgraph) (explicate-tail else then-cgraph))
                 (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then-exp else-exp else-cgraph))
                 (values pred-exp (remove-duplicates (append then-vars else-vars pred-vars)) pred-cgraph))]
      ))

;; explicate-control : R2 -> C1
(define (explicate-control p)
  (match p
    [(Program info e)
     (begin (define-values (tail vars graph) (explicate-tail e '())) (Program `((locals . ,vars)) (CFG (cons `(start . ,tail) graph))))]
    ))

(define (slct-atom e)
    (match e
     [(Var x) (Var x)]
     [(Int x) (Imm x)]
     [(Bool #t) (Imm 1)]
     [(Bool #f) (Imm 0)]))

(define (slct-stmt tail)
  (match tail
    [(Assign (Var x) exp)
     (match exp
       [(Int n) (list (Instr 'movq (list (Imm n) (Var x))))]
       [(Var y) (list (Instr 'movq (list (Var y) (Var x))))]
       [(Bool bool) (list (Instr 'movq (list (slct-atom (Bool bool)) (Var x))))]
       [(Prim 'read es) (list (Callq 'read_int) (Instr 'movq (list (Reg 'rax) (Var x))))]
       [(Prim '- (list y)) #:when (eq? (Var x) y) (list (Instr 'negq (list (Var x))))]
       [(Prim '- (list y)) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'negq (list (Var x))))]
       [(Prim '+ (list y v)) #:when (eq? (Var x) y) (list (Instr 'addq (list (slct-atom v) (Var x))))]
       [(Prim '+ (list y v)) #:when (eq? (Var x) v) (list (Instr 'addq (list (slct-atom y) (Var x))))]
       [(Prim '+ (list y v)) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'addq (list (slct-atom v) (Var x))))]
       [(Prim 'not (list y)) #:when (eq? (Var x) y) (list (Instr 'xorq (list (Imm 1) y)))]
       [(Prim 'not (list y)) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'xorq (list (Imm 1) (Var x))))]
       [(Prim 'eq? (list y z)) (list (Instr 'cmpq (list (slct-atom y) (slct-atom z))) (Instr 'set (list 'e (ByteReg 'al))) (Instr 'movzbq (list (ByteReg 'al) (Var x))))]
       [(Prim '< (list y z)) (list (Instr 'cmpq (list (slct-atom z) (slct-atom y))) (Instr 'set (list 'l (ByteReg 'al))) (Instr 'movzbq (list (ByteReg 'al) (Var x))))])]))


(define (slct-tail e)
  (match e
    [(Seq s t) (append (slct-stmt s) (slct-tail t))]
    [(Goto label) (list (Jmp label))]
    [(IfStmt (Prim 'eq? (list exp1 exp2)) (Goto l1) (Goto l2))
     (list (Instr 'cmpq (list (slct-atom exp1) (slct-atom exp2))) (JmpIf 'e l1) (Jmp l2))]
    [(IfStmt (Prim '< (list exp1 exp2)) (Goto l1) (Goto l2))
     (list (Instr 'cmpq (list (slct-atom exp2) (slct-atom exp1))) (JmpIf 'l l1) (Jmp l2))]
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
    [(Instr 'cmpq `(,arg ,(Var x))) (set)]
    [(Instr i `(,arg ,(Var x))) (set x)]
    [x (set)]))

(define (read-from instr)
  (match instr
    [(Instr 'negq (list (Var x))) (set x)]
    [(Instr 'addq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'addq `(,arg ,(Var x))) (set x)]
    [(Instr 'cmpq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'cmpq `(,arg ,(Var x))) (set x)]
    [(Instr 'xorq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'xorq `(,arg ,(Var x))) (set x)]
    [(Instr i `(,(Var x) ,arg)) (set x)]
    [x (set)]))

(define (compute-live-afters instrs base)
  (cond [(empty? instrs) `(,base)]
        [else (let [(live-afters (compute-live-afters (cdr instrs) base))] (cons
                                                                       (set-union (set-subtract (car live-afters) (written-to (car instrs))) (read-from (car instrs)))
                                                                       live-afters))]))
(define (do-lives blocks ordering g others)
  (cond [(empty? ordering) '()]
        [else (let ([block (match-alist (car ordering) blocks)])
                (match block
                  [(Block info instrs) (let ([base (apply set-union (append (map (lambda (n) (car (match-alist n others))) (get-neighbors g (car ordering))) (list (set))))])
                                         (let ([las (compute-live-afters instrs base)])
                                           (cons `(,(car ordering) . ,(Block (cons `(live-afters . ,las) info) instrs))
                                               (do-lives blocks (cdr ordering) g (cons `(,(car ordering) . ,las) others)))))]))]))
      

(define (uncover-live p)
  (match p
    [(Program info (CFG B-list))
     (let ([g (CFG->graph (CFG B-list))])
       (let ([ordering (tsort (transpose g))])
         (Program info (CFG (do-lives B-list ordering g '())))))]))

;Print the live-after sets
(define (print-lives p)
  (match p
    [(Program info (CFG B-list))
     (map (lambda (x) (match x
                        [`(,label . ,(Block info instrs)) (print (match-alist 'live-afters info))])) B-list)]))

(define all-registers (list 'rax 'r11 'r15 'rbp
                             'rcx 'rdx 'rsi 'rdi
                             'r8 'r9 'r10 'rbx
                             'r12 'r13 'r14 'rsp))

(define caller-registers '(rdx rcx rsi rdi r8 r9 r10 r11)) ;Excludes rax since it won't be in the interference graph
(define callee-registers '(r12 r13 r14 rbx rbp))

(define instrs-with-writes '(addq movq xorq movzbq))

(define (add-from-instr graph instr live-after)
  (match instr
    [(Callq label) (for ([x live-after]) (for ([y caller-registers]) (add-edge! graph x y)))]
    [(Instr 'movq `(,(Var z) ,(Var y))) (for ([x live-after] #:when (and (not (equal? x y)) (not (equal? x z)))) (add-edge! graph x y))]
    [(Instr 'movq `(,(Var z) ,(Reg r))) #:when (not (eq? r 'rax)) (for ([x live-after] #:when (not (equal? x z))) (add-edge! graph x r))]
    [(Instr 'movq `(,(Reg r) ,(Var y))) #:when (not (eq? r 'rax)) (for ([x live-after] #:when (not (equal? x y)))  (add-edge! graph x y))]
    [(Instr 'movq `(,(Reg r1) ,(Reg r2))) #:when (and (not (eq? r1 'rax)) (not (eq? r2 'rax))) (for ([x live-after]) (add-edge! graph x r2))]
    [(Instr 'movzbq `(,(Var z) ,(Var y))) (for ([x live-after] #:when (and (not (equal? x y)) (not (equal? x z)))) (add-edge! graph x y))]
    [(Instr 'movzbq `(,(Var z) ,(Reg r))) #:when (not (eq? r 'rax)) (for ([x live-after] #:when (not (equal? x z))) (add-edge! graph x r))]
    [(Instr 'movzbq `(,(Reg r) ,(Var y))) #:when (not (eq? r 'rax)) (for ([x live-after] #:when (not (equal? x y)))  (add-edge! graph x y))]
    [(Instr 'movzbq `(,(Reg r1) ,(Reg r2))) #:when (and (not (eq? r1 'rax)) (not (eq? r2 'rax))) (for ([x live-after]) (add-edge! graph x r2))]
    [(Instr i `(,arg ,(Var y))) #:when (index-of instrs-with-writes i) (for ([x live-after] #:when (not (equal? x y))) (add-edge! graph x y))]
    [(Instr i `(,arg ,(Reg r))) #:when (and (index-of instrs-with-writes i) (not (eq? r 'rax))) (for ([x live-after]) (add-edge! graph x r))]
    [else graph]))


(define (add-block-to-graph graph instrs lives)
  (cond [(empty? instrs) graph]
        [else (begin (add-from-instr (add-block-to-graph graph (cdr instrs) (cdr lives)) (car instrs) (car lives)) graph)]))

(define (graph-from-blist B-list locals)
  (cond [(empty? B-list) (begin
                           (define g (unweighted-graph/undirected '()))
                           (for ([x (cdr all-registers)]) (add-vertex! g x))
                           (for ([x locals]) (match x [(Var y) (add-vertex! g y)]))
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
  '((rcx . 0) (rdx . 1) (rsi . 2) (rdi . 3) (r8 . 4) (r9 . 5) (r10 . 6)
    (rbx . 7) (r12 . 8) (r13 . 9) (r14 . 10)))
    

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

(define (round-stack-to-16 n)
  (if (zero? n) 16 (if (zero? (modulo n 16)) n (+ n 8))))

(define (compute-stack-size homes)
  (cond [(empty? homes) 0]
        [else (match (car homes)
                [`(,var . ,(Deref reg loc)) (+ 8 (compute-stack-size (cdr homes)))]
                [x (compute-stack-size (cdr homes))])]))
 
(define (allocate-registers p)
  (match p
    [(Program info (CFG B-list))
     (let [(homes (generate-assignments (match-alist 'locals info) (color-graph (preprocess-graph (match-alist 'interference-graph info)) (match-alist 'locals info))))]
     (Program `((stack-size . ,(compute-stack-size homes)) (used-regs . ,(filter Reg? (map cdr homes)))) (CFG (map (lambda (x) (match x
     [`(,label . ,(Block info instrs)) `(,label . ,(Block info (assign-block instrs homes)))])) B-list))))]))
   
(define (assign-nat n)
  (let [(last-reg (sub1 (length reg-colors)))]
    (cond [(> n last-reg) (Deref 'rbp (* (add1 (- n last-reg)) (- 8)))]
          [else (Reg (rev-match-alist n reg-colors))])))

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
    [(Instr 'cmpq (list (Imm n1) (Imm n2)))
     (list (Instr 'movq (list (Imm n2) (Reg 'rax)))
           (Instr 'cmpq (list (Imm n1) (Reg 'rax))))]
    [(Instr 'movzbq (list x y)) #:when (not (Reg? y))
     (list (Instr 'movzbq (list x (Reg 'rax)))
           (Instr 'movq (list (Reg 'rax) y)))]
    [(Instr e (list (Deref  reg off) (Deref reg2 off2)))
         (list (Instr 'movq (list (Deref reg off) (Reg 'rax)))
               (Instr e (list (Reg 'rax) (Deref reg2 off2))))]
    [else (list instruction)]))

(define (patch e)
  (match e
    [(Block info exp) (Block '() (append-map do-patch exp))]
    ))

(define (patch-instructions p)
   (match p
    [(Program info (CFG B-list))
     (Program info
              (CFG
               (map
                (lambda (x) `(,(car x) . ,(patch (cdr x)))) B-list)))]))
       

;; generates an x86 representation of the main clause
(define (make-main stack-size used-regs)
  (let ([extra-pushes (filter (lambda (reg)
                                (match reg
                                  [(Reg x) (index-of callee-registers x)]
                                  [x false]))
                              used-regs)])
    (Block '() (append (list (Instr 'pushq (list (Reg 'rbp))) (Instr 'movq (list (Reg 'rsp) (Reg 'rbp)))) (append (map (lambda (x) (Instr 'pushq (list x))) extra-pushes) (list (Instr 'subq (list (Imm (let ([push-bytes (* 8 (length extra-pushes))]) (- (round-stack-to-16 (+ push-bytes stack-size)) push-bytes))) (Reg 'rsp))) (Jmp 'start)))))))

;; generates an x86 representation of the conclusion

(define (make-conclusion stack-size used-regs)
  (let ([extra-pops (filter (lambda (reg)
                                (match reg
                                  [(Reg x) (index-of callee-registers x)]
                                  [x false]))
                              used-regs)])
    (Block '() (append (list (Instr 'addq (list (Imm (let ([push-bytes (* 8 (length extra-pops))]) (- (round-stack-to-16 (+ push-bytes stack-size)) push-bytes))) (Reg 'rsp)))) (append (map (lambda (x) (Instr 'popq (list x))) extra-pops) (list (Instr 'popq (list (Reg 'rbp))) (Retq)))))))

(define (stringify-ref ref)
  (match ref
    [(Imm x) (format "$~a" x)]
    [(Reg x) (format "%~a" x)]
    [(ByteReg reg) (format "%~a" reg)]
    [(Deref reg loc) (format "~a(%~a)" loc reg)]))

(define (stringify-instr instr)
  (match instr
    [(Callq label) (format "\tcallq ~a\n" (label-name label))]
    [(Jmp label) (format "\tjmp ~a\n" (label-name label))]
    [(JmpIf cc label) (format "\t j~a ~a\n" cc (label-name label))]
    [(Instr 'set (list cc arg)) (format "\t set~a ~a\n" cc (stringify-ref arg))]
    [(Instr name regs) (format "\t~a ~a\n" name (string-join (map stringify-ref regs) ", "))]
    [(Retq) (format "\tretq \n")]
    [x (format "\t~a" x)]))

;;Turns a block and its label into a string
(define (stringify-block label block)
  (format "~a:~n~a" (if (eq? 'main label) (format ".globl main~n~a" (label-name label)) (label-name label)) (match block
                              ([Block info instrs] (foldr (lambda (x rs) (string-append (stringify-instr x) rs)) "" instrs)))))

;;Converts an alist of labeled x86 blocks to their string representation
(define (x86-to-string blocks)
  (foldr (lambda (x rs) (string-append (stringify-block (car x) (cdr x)) rs)) "" blocks))

;; print-x86 : x86 -> string
(define (print-x86 p)
  (match p
    [(Program info (CFG B-list)) (let [(stack-size (match-alist 'stack-size info))]
                                   (let [(used-regs (set->list (list->set (match-alist 'used-regs info))))]
                                     (let [(main (make-main stack-size used-regs))]
                                       (let [(conclusion (make-conclusion stack-size used-regs))]
                                         (x86-to-string (append B-list `((main . ,main) (conclusion . ,conclusion))))
                                         ))))]))

(define test-compile (compose patch-instructions allocate-registers build-interference uncover-live select-instructions explicate-control remove-complex-opera* uniquify type-check-R2 parse-program (lambda (x) `(program () ,x))))