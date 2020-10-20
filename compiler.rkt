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
     (define type (match-alist x env))
     (values (HasType (Var x) type) type)]
    [(Void) (values (HasType (Void)'Void)'Void)]
    [(Prim 'vector es)
     (define-values (e* t*) (for/lists (e* t*) ([e es]) (type-check-exp env e)))
     (let ([t `(Vector ,@t*)]) (values (HasType (Prim 'vector e*) t) t))]
    [(Prim 'vector-ref (list e (Int i)))
     (define-values (e^ t) (type-check-exp env e))
     (match t
       [`(Vector ,ts ...)
        (unless (and (exact-nonnegative-integer? i) (< i (length ts)))
          (error 'type-check-exp "invalid index ~a" i))
        (let ([t (list-ref ts i)])
          (values
           (HasType (Prim 'vector-ref (list e^ (HasType (Int i) 'Integer))) t) t))]
       [else (error "expected a vector in vector-ref, not" t)])]
    [(Prim 'vector-set! (list vect (Int i) val))
     (define-values (vect-exp vect-type) (type-check-exp env vect))
     (define-values (i-exp i-type) (type-check-exp env (Int i)))
     (define-values (val-exp val-type) (type-check-exp env val))
     (if (not (eq? i-type 'Integer))
         (error "The type of index for vector-set! must be an Integer")
         (if (not (eq? (car vect-type) 'Vector))
             (error "Vector set got a non vector")
             (if (not (equal? (list-ref vect-type (add1 i)) val-type))
                 (error (format "Changing vector types is not supported got ~a ~a" (list-ref vect-type (add1 i)) val-type))
                 (values (HasType (Prim 'vector-set! (list vect-exp i-exp val-exp)) 'Void) 'Void))))]
    [(Int n) (values (HasType (Int n) 'Integer) 'Integer)]
    [(Bool bool) (values (HasType (Bool bool) 'Boolean) 'Boolean)]
    [(Let x e body)
     (define-values (var-exp var-type) (type-check-exp env e))
     (define-values (body-exp body-type) (type-check-exp (cons `(,x . ,var-type) env) body))
     (values (HasType (Let x var-exp body-exp) body-type) body-type)]
    [(Prim 'read es)
     (values (HasType (Prim 'read es) 'Integer) 'Integer)]
    [(Prim op es) #:when (index-of '(- + < <= > >=) op) (define-values (e* t*) (for/lists (e* t*) ([e es]) (type-check-exp env e)))
                  (if (andmap (lambda (t) (eq? t 'Integer)) t*)
                      (values (HasType (Prim op e*) 'Integer) 'Integer)
                      (error (format "Arthimetic/Comparison operators only operate on integers (got ~a) with env: ~a" t* env)))]
    [(Prim op es) #:when (index-of '(and or not) op) (define-values (e* t*) (for/lists (e* t*) ([e es]) (type-check-exp env e)))
                  (if (andmap (lambda (t) (eq? 'Boolean t)) t*)
                      (values (HasType (Prim op e*) 'Boolean) 'Boolean)
                      (error "Logical operators only operate on booleans"))]
    [(Prim cmp es) #:when (index-of '(eq?) cmp) (define-values (e1 t1) (type-check-exp env (car es)))
                   (define-values (e2 t2) (type-check-exp env (cadr es)))
                   (if (eq? t1 t2)
                       (values (HasType (Prim cmp `(,e1 ,e2)) 'Boolean) 'Boolean)
                       (error "comparison between different types not supported"))]
    [(If cond exp else) (define-values (exp-e exp-t) (type-check-exp env exp))
                        (define-values (else-e else-t) (type-check-exp env else))
                        (define-values (cond-e cond-t) (type-check-exp env cond))
                        (if (eq? exp-t else-t)
                            (if (eq? 'Boolean cond-t)
                                (values (HasType (If cond-e exp-e else-e) exp-t) exp-t)
                                (error "If condition must be a Boolean"))
                            (error "Both if cases must be the same type"))]
    
    ))


(define (type-check p)
  (match p
    [(Program info e)
     (begin (define-values (exp type) (type-check-exp '() e))
            (if (eq? 'Integer type)
                (Program info exp)
                (error 'type-check-R2 "R3 programs should type check to an integer")))]))

(define (shrink-exp e)
  (match e
    [(HasType exp type)
     (HasType (shrink-exp exp) type)]
    [(Prim '- `(,first ,second)) (Prim '+ `(,(shrink-exp first) ,(HasType (Prim '- (list (shrink-exp second))) 'Integer)))]
    [(Prim 'and `(,first ,second)) (let ([t1 (gensym 'tmp)] [type (match first [(HasType exp t) t])])
                                     (Let t1 (shrink-exp first)
                                          (HasType (If (Var t1) (shrink-exp second) (Bool #f)) type)))]
    [(Prim 'or `(,first ,second)) (let ([t1 (gensym 'tmp)] [type (match first [(HasType exp t) t])])
                                    (Let t1 (shrink-exp first)
                                         (HasType (If (Var t1) (Bool #t) (shrink-exp second)) type)))]
    [(Prim '> `(,first ,second)) (let ([t1 (gensym 'tmp)] [t2 (gensym 'tmp)])
                                   (Let t1 (shrink-exp first)
                                        (HasType (Let t2 (shrink-exp second)
                                                      (HasType (If (HasType (Prim 'eq? (list (HasType (Var t1) 'Integer) (HasType (Var t2) 'Integer))) 'Boolean) (HasType (Bool #f) 'Boolean)
                                                                   (HasType (Prim 'not (list (HasType (Prim '< (list (HasType (Var t1) 'Integer) (HasType (Var t2) 'Integer))) 'Boolean)) 'Boolean)) 'Boolean)) 'Boolean))))]
    [(Prim '>= `(,first ,second)) (Prim 'not (list (HasType (Prim '< (list (shrink-exp first) (shrink-exp second))) 'Boolean)))]
    [(Prim '<= `(,first ,second)) (let ([t1 (gensym 'tmp)] [t2 (gensym 'tmp)])
                                    (Let t1 (shrink-exp first)
                                         (HasType (Let t2 (shrink-exp second)
                                                       (HasType (If (HasType (Prim 'eq? (list (HasType (Var t1) 'Integer) (HasType (Var t2) 'Integer))) 'Boolean) (HasType (Bool #t) 'Boolean)
                                                                    (HasType (Prim '< (list (HasType (Var t1) 'Integer) (HasType (Var t2) 'Integer))) 'Boolean)) 'Boolean)) 'Boolean)))]
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
      [(HasType exp type)
       (HasType ((uniquify-exp symtab) exp) type)] 
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

(define (generate-n-vars n)
  (if (zero? n) '()
      (cons (gensym 'tmp) (generate-n-vars (sub1 n)))))

(define (expand-into-lets vars exps base base-type)
  (if (empty? exps) base
      (HasType (Let (car vars) (car exps) (expand-into-lets (cdr vars) (cdr exps) base base-type)) base-type)))

(define (duplicate x n)
  (if (zero? n) '()
      (cons x (duplicate x (sub1 n)))))

(define (make-vector-set-exps vect accum vars types)
  (if (empty? vars) '()
      (cons (HasType (Prim 'vector-set! (list vect (HasType (Int accum) 'Integer) (HasType (Var (car vars)) (car types)))) 'Void)
            (make-vector-set-exps vect (add1 accum) (cdr vars) (cdr types)))))


(define (do-allocate vect len bytes base type)
  (HasType (Let '_ (HasType (If (HasType (Prim '< (list (HasType (Prim '+ (list (HasType (GlobalValue 'free_ptr) 'Integer) (HasType (Int bytes) 'Integer))) 'Integer) (HasType (GlobalValue 'fromspace_end) 'Integer))) 'Boolean)
                                (HasType (Void) 'Void)
                                (HasType (Collect bytes) 'Void)) 'Void)
                (HasType (Let vect (HasType (Allocate len type) type) base) type)) type))
  

(define (bulk-vector-set vect vars types)
  (expand-into-lets (duplicate '_ (length vars)) (make-vector-set-exps vect 0 vars (cdr types)) vect types))
  

(define (expose-exp e)
  (match e
    [(HasType (Prim 'vector es) type)
     (let* ([len (length es)] [bytes (* 8 len)] [vect (gensym 'vec)] [vars (generate-n-vars len)])
       (expand-into-lets vars (for/list ([e es]) (expose-exp e)) (do-allocate vect len bytes (bulk-vector-set (HasType (Var vect) type) vars type) type) type))]
    [(Prim op es)
     (Prim op (for/list ([e es]) (expose-exp e)))]
    [(Let x e body)
     (Let x (expose-exp e) (expose-exp body))]
    [(If cond exp else) (If (expose-exp cond) (expose-exp exp) (expose-exp else))]
    [(HasType exp type) (HasType (expose-exp exp) type)]
    [x x]))
    
(define (expose-allocation p)
  (match p
    [(Program info e)
     (Program info (expose-exp e))]))

;Expands an alist into let expression binding each variable to its associated expression
(define (expand-alist alist base type)
  (cond [(empty? alist) (HasType base type)]
        [else (HasType (Let (car (car alist)) (cdr (car alist)) (expand-alist (cdr alist) base type)) type)]))

  
(define (rco-atom e)
  (match e
    [(HasType (Var x) t) (values (HasType (Var x) t) '())]
    [(HasType (Int n) t) (values (HasType (Int n) t) '())]
    [(HasType (Bool bool) t) (values (HasType (Bool bool) t) '())]
    [(HasType (Void) t) (values (HasType (Void) t) '())]
    [(HasType (Let x e body) type)
     (let [(tmp (gensym "tmp"))]
       (begin (define-values (e-val e-alist) (rco-atom e))
              (values (HasType (Var tmp) type) (append e-alist  `((,tmp . ,(HasType (Let x e-val (rco-exp body)) type)))))))]
    [(HasType (Prim op es) type)
     (let [(tmp (gensym "tmp")) (exps (split-pairs (for/list ([e es]) (begin (define-values (var alist) (rco-atom e)) `(,var . ,alist)))))]
       (values (HasType (Var tmp) type) (append (cdr exps) `((,tmp . ,(HasType (Prim op (car exps)) type))))))]
    [(HasType (If cond exp else) type)
     (let [(tmp (gensym "tmp"))]
       (begin (define-values (cond-val cond-alist) (rco-atom cond))
              (define-values (exp-val exp-alist) (rco-atom exp))
              (define-values (else-val else-alist) (rco-atom else))
              (values (HasType (Var tmp) type) (append cond-alist exp-alist else-alist `((,tmp . ,(rco-exp (HasType (If cond-val exp-val else-val) type))))))))]
    [(HasType x type) ;Case for allocate, global_value, collect
     (let [(tmp (gensym "tmp"))]
       (values (HasType (Var tmp) type) `((,tmp . ,(HasType x type)))))]
    ))

(define (rco-exp e)
  (match e
    [(Var x) (Var x)]
    [(Int n) (Int n)]
    [(Bool bool) (Bool bool)]
    [(Void) (Void)]
    [(Let x e body)
     (begin (define e-val (rco-exp e))
            (Let x e-val (rco-exp body)))]
    [(HasType (Prim op es) type)
     (let [(exps (split-pairs (for/list ([e es]) (begin (define-values (var alist) (rco-atom e)) `(,var . ,alist)))))] (expand-alist (cdr exps) (Prim op (car exps)) type))]
    [(If cond exp else)
     (begin (define exp-var (rco-exp exp))
            (define else-var (rco-exp else))
            (define cond-var (rco-exp cond))
            (If cond-var exp-var else-var))]
    [(HasType exp type)
     (HasType (rco-exp exp) type)]
    [(Collect bytes)
     (Collect bytes)]
    [(GlobalValue name)
     (GlobalValue name)]
    [(Allocate n type)
     (Allocate n type)]
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
    [(Seq stmt seq-tail) (Seq stmt (do-assignment seq-tail var tail))]
    [(Return (HasType x t)) (Seq (Assign var (HasType x t)) tail)]
    ))

(define (explicate-assign exp var tail cgraph)
  (match exp
    [(HasType (If pred then else) t)
     (let ([tail-block (gensym "block")])
       (begin (define-values (then-exp then-vars then-graph) (explicate-assign then var (Goto tail-block)  cgraph))
              (define-values (else-exp else-vars else-graph) (explicate-assign else var (Goto tail-block)  then-graph))
              (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then-exp else-exp else-graph))
              (values pred-exp (remove-duplicates (append then-vars else-vars pred-vars)) (cons `(,tail-block . ,tail) pred-cgraph))))]
    [(HasType (Let x exp body) t) (begin (define-values (exp-body body-vars body-graph) (explicate-assign body var tail cgraph))
                             (define-values (body-tail vars newgraph) (explicate-assign exp (Var x) exp-body body-graph))
                             (values body-tail (cons (Var x) (remove-duplicates (append body-vars vars))) newgraph))]
    [x (begin (define-values (exp-tail exp-vars exp-graph) (explicate-tail exp cgraph))
              (values (do-assignment exp-tail var tail) exp-vars exp-graph))
       ]))

(define (explicate-pred e true-blk false-blk cgraph)
  (match e
    [(HasType (Bool #t) t) (values true-blk '() cgraph)]
    [(HasType (Bool #f) t) (values false-blk '() cgraph)]
    [(HasType (Var x) t) (let ([then-lbl (gensym "block")] [else-lbl (gensym "block")])
               (values (IfStmt (Prim 'eq? (list (HasType (Var x) t) (HasType (Bool #t) 'Boolean))) (Goto then-lbl) (Goto else-lbl)) '() (cons `(,then-lbl . ,true-blk)
                                                                                                               (cons `(,else-lbl . ,false-blk) cgraph))))]
    [(HasType (Prim 'not (list var)) t) (begin (define-values (result result-vars result-cgraph) (explicate-pred var false-blk true-blk cgraph))
                                   (values result result-vars result-cgraph))]
    [(HasType (Prim cmp es) t) (let ([then-lbl (gensym "block")] [else-lbl (gensym "block")])
                     (values (IfStmt (Prim cmp es) (Goto then-lbl) (Goto else-lbl)) '() (cons `(,then-lbl . ,true-blk)
                                                                                              (cons `(,else-lbl . ,false-blk) cgraph))))]
    [(HasType (Let x exp body) t) (begin (define-values (exp-body body-vars body-graph) (explicate-pred body true-blk false-blk cgraph))
                             (define-values (tail vars tail-graph) (explicate-assign exp (Var x) exp-body body-graph)) (values tail (cons (Var x) (remove-duplicates (append body-vars vars))) tail-graph))]
    [(HasType (If pred then else) t) (begin (define-values (then-exp then-vars then-cgraph) (explicate-pred then true-blk false-blk cgraph))
                                (define-values (else-exp else-vars else-cgraph) (explicate-pred else true-blk false-blk then-cgraph))
                                (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then-exp else-exp else-cgraph))
                                (values pred-exp (remove-duplicates (append then-vars else-vars pred-vars)) pred-cgraph))]
    ))
                                  
    

(define (explicate-tail e cgraph)
  (match e
    [(HasType (Var x) t) (values (Return (HasType (Var x) t)) '() cgraph)]
    [(HasType (Int n) t) (values (Return (HasType (Int n) t)) '() cgraph)]
    [(HasType (Bool bool) t) (values (Return (HasType (Bool bool) t)) '() cgraph)]
    [(HasType (Void) t) (values (Return (HasType (Void) t)) '() cgraph)]
    [(HasType (Let x e body) t)
     (begin (define-values (exp-body body-vars body-graph) (explicate-tail body cgraph))
            (define-values (tail vars newgraph) (explicate-assign e (Var x) exp-body body-graph))
            (values tail (cons (Var x) (remove-duplicates (append body-vars vars))) newgraph))]
    [(HasType (Prim op es) t)
     (values (Return (HasType (Prim op es) t)) '() cgraph)]
    [(HasType (If pred then else) t)
     (begin (define-values (then-exp then-vars then-cgraph) (explicate-tail then cgraph))
            (define-values (else-exp else-vars else-cgraph) (explicate-tail else then-cgraph))
            (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then-exp else-exp else-cgraph))
            (values pred-exp (remove-duplicates (append then-vars else-vars pred-vars)) pred-cgraph))]
    [(HasType (Collect bytes) t)
     (values (Return (HasType (Collect bytes) t)) '() cgraph)]
    [(HasType (GlobalValue name) t)
     (values (Return (HasType (GlobalValue name) t)) '() cgraph)]
    [(HasType (Allocate n type) t)
     (values (Return (HasType (Allocate n type) t)) '() cgraph)]
    ))

;; explicate-control : R2 -> C1
(define (explicate-control p)
  (match p
    [(Program info e)
     (begin (define-values (tail vars graph) (explicate-tail e '())) (Program `((locals . ,vars)) (CFG (cons `(start . ,tail) graph))))]
    ))

(define (uncover-block tail)
  (match tail
    [(Seq (Assign var (HasType x type)) t)
     (cons `(,var . ,type) (uncover-block t))]
    [x '()]))

(define (uncover-locals p)
  (match p
    [(Program info (CFG B-list))
     (let ([locals (remove-duplicates (append-map (lambda (x) (uncover-block (cdr x))) B-list))])
     (Program `((locals . ,locals)) (CFG B-list)))]));(map (lambda (x) `(,(car x) . ,(Block '() (slct-tail (cdr x))))) B-list)))
     



(define (calculate-tag types t-len)
  (if (empty? types) (add1 (* 2 t-len))
      (bitwise-ior (arithmetic-shift (if (list? (car types)) 1 0) (+ (length types) 6))
                   (calculate-tag (cdr types) t-len))))

(define (slct-atom e)
  (match e
    [(Var x) (Var x)]
    [(Int x) (Imm x)]
    [(Bool #t) (Imm 1)]
    [(Bool #f) (Imm 0)]
    [(Void) (Imm 0)]
    [(HasType x t) (slct-atom x)]))

(define (slct-stmt tail)
  (match tail
    [(Assign (Var x) (HasType exp t))
     (match exp
       [(Int n) (list (Instr 'movq (list (Imm n) (Var x))))]
       [(Var y) (list (Instr 'movq (list (Var y) (Var x))))]
       [(Bool bool) (list (Instr 'movq (list (slct-atom (Bool bool)) (Var x))))]
       [(Void) (list (Instr 'movq (list (Imm 0) (Var x))))]
       [(Prim 'read es) (list (Callq 'read_int) (Instr 'movq (list (Reg 'rax) (Var x))))]
       [(Prim '- (list (HasType y t))) #:when (eq? (Var x) y) (list (Instr 'negq (list (Var x))))]
       [(Prim '- (list (HasType y t))) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'negq (list (Var x))))]
       [(Prim '+ (list (HasType y t1) (HasType v t2))) #:when (eq? (Var x) y) (list (Instr 'addq (list (slct-atom v) (Var x))))]
       [(Prim '+ (list (HasType y t1) (HasType v t2))) #:when (eq? (Var x) v) (list (Instr 'addq (list (slct-atom y) (Var x))))]
       [(Prim '+ (list (HasType y t1) (HasType v t2))) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'addq (list (slct-atom v) (Var x))))]
       [(Prim 'not (list (HasType y t))) #:when (eq? (Var x) y) (list (Instr 'xorq (list (Imm 1) y)))]
       [(Prim 'not (list (HasType y t))) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'xorq (list (Imm 1) (Var x))))]
       [(Prim 'eq? (list (HasType y t1) (HasType z t2))) (list (Instr 'cmpq (list (slct-atom y) (slct-atom z))) (Instr 'set (list 'e (ByteReg 'al))) (Instr 'movzbq (list (ByteReg 'al) (Var x))))]
       [(Prim '< (list (HasType y t1) (HasType z t2))) (list (Instr 'cmpq (list (slct-atom z) (slct-atom y))) (Instr 'set (list 'l (ByteReg 'al))) (Instr 'movzbq (list (ByteReg 'al) (Var x))))]
       [(Prim 'vector-ref (list (HasType vect t1) (HasType (Int n) t2))) (list (Instr 'movq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 (* -8 (add1 n))) (Var x))))]
       [(Prim 'vector-set! (list (HasType vect t1) (HasType (Int n) t2) (HasType arg t3))) (list (Instr 'movq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (slct-atom arg) (Deref 'r11 (* 8 (add1 n))))) (Instr 'movq (list (Imm 0) (Var x))))]
       [(Allocate len types) (let ([tag (calculate-tag (reverse (cdr types)) (length (cdr types)))])
                               (list (Instr 'movq (list (Global 'free_ptr) (Var x))) (Instr 'addq (list (Imm (* 8 (add1 len))) (Global 'free_ptr))) (Instr 'movq (list (Var x) (Reg 'r11))) (Instr 'movq (list (Imm tag) (Deref 'r11 0)))))]
       [(Collect bytes) (list (Instr 'movq (list (Reg 'r15) (Reg 'rdi))) (Instr 'movq (list (Imm bytes) (Reg 'rsi))) (Callq 'collect))]
       [(GlobalValue tag) (list (Instr 'movq (list (Global tag) (Var x))))])]))


(define (slct-tail e)
  (match e
    [(Seq s t) (append (slct-stmt s) (slct-tail t))]
    [(Goto label) (list (Jmp label))]
    [(IfStmt (Prim 'eq? (list exp1 exp2)) (Goto l1) (Goto l2))
     (list (Instr 'cmpq (list (slct-atom exp1) (slct-atom exp2))) (JmpIf 'e l1) (Jmp l2))]
    [(IfStmt (Prim '< (list exp1 exp2)) (Goto l1) (Goto l2))
     (list (Instr 'cmpq (list (slct-atom exp2) (slct-atom exp1))) (JmpIf 'l l1) (Jmp l2))]
    [(Return (HasType r t))
     (match r
       [(Int n) (list (Instr 'movq (list (Imm n) (Reg 'rax))) (Jmp 'conclusion))]
       [(Var y) (list (Instr 'movq (list (Var y) (Reg 'rax))) (Jmp 'conclusion))]
       [(Prim 'read es) (list (Callq 'read_int)  (Jmp 'conclusion))]
       [(Prim '- (list (HasType y t))) (list
                            (Instr 'movq (list (slct-atom y) (Reg 'rax)))
                            (Instr 'negq (list (Reg 'rax)))
                            (Jmp 'conclusion))]
       [(Prim '+ (list (HasType y t1) (HasType v t2))) (list
                              (Instr 'movq (list (slct-atom y) (Reg 'rax)))
                              (Instr 'addq (list (slct-atom v) (Reg 'rax)))
                              (Jmp 'conclusion))]
       [(Prim 'vector-ref (list (HasType vect t1) (HasType (Int n) t2))) (list (Instr 'movq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 (* -8 (add1 n))) (Reg 'rax))) (Jmp 'conclusion))])]))

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

(define test-compile (compose select-instructions uncover-locals explicate-control remove-complex-opera* expose-allocation shrink type-check parse-program (lambda (x) `(program () ,x))))
(define test-program '(let([v (vector (vector 44))])(let([x (let([w (vector 42)]) (let([_ (vector-set! v 0 w)])0))])(+ x (vector-ref (vector-ref v 0) 0)))))