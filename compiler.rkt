#lang racket
(require racket/set racket/stream)
(require racket/fixnum)
(require "interp-R0.rkt")
(require "interp-R1.rkt")
(require "interp.rkt")
(require (only-in "type-check-R2.rkt" type-check-op operator-types))
(require (only-in "type-check-R5.rkt" type-equal? typed-vars fun-def-type))
(require "utilities.rkt")
(provide print-x86 patch-instructions allocate-registers build-interference uncover-live select-instructions uncover-locals explicate-control remove-complex-opera* expose-allocation limit-functions convert-to-closure reveal-casts check-bounds cast-insert reveal-functions uniquify shrink)
(require graph)
(require racket/trace)

;;;;;;
;Helpers
;;;;;

(define (symb-append symb1 symb2)
  (string->symbol (string-append (symbol->string symb1) (symbol->string symb2))))

(define (match-alist var alist)
  [cond [(empty? alist) #f]
        [(eq? var (car (car alist)))(cdr (car alist))]
        [else (match-alist var (cdr alist))]])

(define (rev-match-alist var alist)
  [cond [(empty? alist) #f]
        [(equal? var (cdr (car alist))) (car (car alist))]
        [else (rev-match-alist var (cdr alist))]])

(define (rev-match-alist-all var alist)
  [cond [(empty? alist) '()]
        [(equal? var (cdr (car alist))) (cons (car (car alist)) (rev-match-alist-all var (cdr alist)))]
        [else (rev-match-alist-all var (cdr alist))]])

(define (remove-duplicates ls)
  (set->list (list->set ls)))

(define (type-is-function? type)
  (cond [(list? type) (member '-> type)]
        [(eq? 'Any type) #t]
        [else #f]))

(define (type-is-vector? type)
  (cond [(eq? 'Closure type) #t]
        [(eq? 'Any type) #t]
        [(list? type) (or (eq? (car type) 'Vector) (eq? (car type) 'Vectorof))]
        [else #f]))

(define (type-is-vectorof? type)
  (cond [(list? type) (eq? (car type) 'Vectorof)]
        [(eq? 'Any type) #t]
        [else #f]))

(define (type-arity t)
  (length (slice t 0 (index-of t '->))))

(define (return-type func)
  (define app (lambda (func) (car (list-tail func (index-of func '->)))))
  (if (type-is-vector? func) (app (list-ref func 1)) (app func)))

;Used to turn '((var . alist) (var . alist)...) into ((var var ...) . alist) where the second alist is the combination of all the other first alists
(define (split-pairs plist)
  (cond [(empty? plist) '(() . ())]
        [else (let [(rest-plist (split-pairs (cdr plist)))] `(,(cons (car (car plist)) (car rest-plist)) . ,(append (cdr (car plist)) (cdr rest-plist))))]))


(define (last-value ls)
  (cond [(empty? ls) #f]
        [(empty? (cdr ls)) (car ls)]
        [else (last-value (cdr ls))]))

(define (symb-contains symb contained)
  (string-contains? (symbol->string symb) (symbol->string contained)))

(define (get-next-blocks instrs)
  (cond [(empty? instrs) '()]
        [else (match (car instrs)
                [(JmpIf cond lbl) (cons lbl (get-next-blocks (cdr instrs)))]
                [(Jmp lbl) #:when (not (symb-contains lbl 'conclusion)) (cons lbl (get-next-blocks (cdr instrs)))]
                [x (get-next-blocks (cdr instrs))])]))

(define (get-edges blocks)
  (cond [(empty? blocks) '()]
        [else (match (car blocks)
                [`(,label . ,(Block info instrs)) (let ([nexts (get-next-blocks instrs)])
                                                    (append (map (lambda (next) `(,label ,next)) nexts) (get-edges (cdr blocks))))])]))

(define (CFG->graph cfg name)
  (match cfg
    [(CFG ls) (let ([g (unweighted-graph/directed (get-edges ls))]) (if (not (has-vertex? g (symb-append name 'start)))
                                                                        (begin (add-vertex! g (symb-append name 'start)) g)
                                                                        g))]))

(define (all-ints start stop step)
  (if (>= start stop) '() (cons start (all-ints (+ start step) stop step))))


(define (slice ls first-in first-out)
  (if (eq? first-in first-out) '()
      (if (zero? first-in) (cons (car ls) (slice (cdr ls) first-in (sub1 first-out)))
          (slice (cdr ls) (sub1 first-in) (sub1 first-out)))))

;Replace illegal characters with sequences of characters no sane person would have in their function name
(define (make-legal-label lbl)
  (label-name (string->symbol (string-replace (symbol->string lbl) "-" "__qzx")))) 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Passes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define op-type-checks `((boolean? . Boolean) (integer? . Integer) (vector? . (Vector)) (procedure . (Void -> Void)) (void? . Void)))

(define (shrink-exp e)
  (match e
    [(HasType exp type)
     (HasType (shrink-exp exp) type)]
    [(Prim '- `(,first ,second)) (Prim '+ `(,(shrink-exp first) ,(Prim '- (list (shrink-exp second)))))]
    [(Prim 'and `(,first ,second)) (let ([t1 (gensym 'tmp)])
                                     (Let t1 (shrink-exp first)
                                          (If (Var t1) (shrink-exp second) (Bool #f))))]
    [(Prim 'or `(,first ,second)) (let ([t1 (gensym 'tmp)])
                                    (Let t1 (shrink-exp first)
                                         (If  (Var t1) (Bool #t) (shrink-exp second))))]
    [(Prim '> `(,first ,second)) (let ([t1 (gensym 'tmp)] [t2 (gensym 'tmp)])
                                   (Let t1 (shrink-exp first)
                                        (Let t2 (shrink-exp second)
                                             (If (Prim 'eq? (list (Var t1) (Var t2))) (Bool #f) 
                                                 (Prim 'not (list (Prim '< (list (Var t1) (Var t2)))))))))]
    [(Prim '>= `(,first ,second)) (Prim 'not (list (Prim '< (list (shrink-exp first) (shrink-exp second)))))]
    [(Prim '<= `(,first ,second)) (let ([t1 (gensym 'tmp)] [t2 (gensym 'tmp)])
                                    (Let t1 (shrink-exp first)
                                         (Let t2 (shrink-exp second)
                                              (If (Prim 'eq? (list  (Var t1) (Var t2))) (Bool #t)
                                                  (Prim '< (list (Var t1) (Var t2)))))))]
    [(Prim op es) (Prim op (map shrink-exp es))]
    [(Let x e body) (Let x (shrink-exp e) (shrink-exp body))]
    [(If cond exp else) (If (shrink-exp cond) (shrink-exp exp) (shrink-exp else))]
    [(Apply f es) (Apply f (map shrink-exp es))]
    [(Lambda bnd rT body) (Lambda bnd rT (shrink-exp body))]
    [x x]))
    
(define (shrink-def def)
  (match def
    [(Def name xs rt info body)
     (Def name xs rt info (shrink-exp body))]))
  
(define (shrink p)
  (match p
    [(Program info exp)
     (ProgramDefs info `(,(Def 'main '() 'Integer '() (shrink-exp exp))))]
    [(ProgramDefsExp info defs exp)
     (ProgramDefs info `(,@(map shrink-def defs) ,(Def 'main '() 'Integer '() (shrink-exp exp))))]
    ))


(define (uniquify-exp symtab)
  (lambda (e)
    (match e
      [(Var x)
       (Var (match-alist x symtab))]
      [(HasType exp type)
       (HasType ((uniquify-exp symtab) exp) type)] 
      [(Int n) (Int n)]
      [(Void) (Void)]
      [(Bool bool) (Bool bool)]
      [(Let x e body)
       (let ([y (gensym x)])
         (Let y ((uniquify-exp symtab) e) ((uniquify-exp (cons `(,x . ,y) symtab)) body)))]
      [(Prim op es)
       (Prim op (for/list ([e es]) ((uniquify-exp symtab) e)))]
      [(If cond exp else) (If ((uniquify-exp symtab) cond) ((uniquify-exp symtab) exp) ((uniquify-exp symtab) else))]
      [(Apply f es) (Apply ((uniquify-exp symtab) f) (map (uniquify-exp symtab) es))]
      [(Exit) (Exit)]
      [(ValueOf exp type) ((uniquify-exp symtab) exp)]
      [(Lambda xs rT body)
       (let* [(new-vars (map (lambda (x) `(,x . ,(gensym x))) xs)) (ys (map cdr new-vars))] 
         (Lambda ys rT ((uniquify-exp (append new-vars symtab)) body)))]
      )))

(define (uniquify-def def global-symtab)
  (match def
    [(Def name xs rt info body)
     (define symtab (append (map (lambda (x) `(,x . ,(gensym x))) xs) global-symtab))
     (define unique-body ((uniquify-exp symtab) body))
     (Def name (map (lambda (x) (match-alist x symtab)) xs) rt info unique-body)])) 


(define (make-global-symtab defs)
  (map (lambda (def) (match def [(Def name ps rt info body) `(,name . ,name)])) defs))
;; uniquify : R1 -> R1
(define (uniquify p)
  (match p
    [(ProgramDefs info ds)
     (let ([global-symtab (make-global-symtab ds)])
       (ProgramDefs info (map (lambda (def) (uniquify-def def global-symtab)) ds)))]
    ))

(define (make-global-arities defs)
  (map (lambda (def) (match def [(Def name ps rt info body) `(,name . ,(length ps))])) defs))

(define (reveal-exp exp glbls)
  (match exp
    [(HasType (Var x) t) #:when (match-alist x glbls) (HasType (FunRefArity x (match-alist x glbls)) t)]
    [(Var x) #:when (match-alist x glbls) (FunRefArity x (match-alist x glbls))]
    [(Var x)
     (Var x)]
    [(HasType exp type)
     (HasType (reveal-exp exp glbls) type)] 
    [(Int n) (Int n)]
    [(Bool bool) (Bool bool)]
    [(Void) (Void)]
    [(Let x e body)
     (Let x (reveal-exp e glbls) (reveal-exp body glbls))]
    [(Prim op es)
     (Prim op (for/list ([e es]) (reveal-exp e glbls)))]
    [(If cond exp else) (If (reveal-exp cond glbls) (reveal-exp exp glbls) (reveal-exp else glbls))]
    [(Apply f es) (Apply (reveal-exp f glbls) (map (lambda (e) (reveal-exp e glbls)) es))]
    [(Lambda bnd rT body) (Lambda bnd rT (reveal-exp body glbls))]
    [(ValueOf exp type) (ValueOf (reveal-exp exp) type)]
    [(Exit) (Exit)]))  

(define (reveal-def def glbls)
  (match def
    [(Def name ps rt info body)
     (Def name ps rt info (reveal-exp body glbls))]))

(define (reveal-functions p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map (lambda (def) (reveal-def def (make-global-arities ds))) ds))]
    ))

(define op-return-types `((+ . Integer) (- . Integer) (< . Boolean) (read . Integer) (not . Boolean) (procedure-arity . Integer) (vector-length . Integer) (vector-set! . Void) (vector-ref . Any) (boolean? . Boolean) (integer? . Boolean) (vector? . Boolean) (procedure? . Boolean) (void? . Boolean) (eq? . Boolean))) 
(define op-input-types `((+ . (Integer Integer)) (- . (Integer)) (< . (Integer Intger)) (read . ()) (not . (Boolean)) (procedure-arity . ((Any -> Any))) (vector-length . ((Vectorof Any))) (vector-set! . ((Vectorof Any) Integer Any)) (vector-ref . ((Vectorof Any) Integer)) (boolean? . (Any)) (integer? . (Any)) (vector? . (Any)) (procedure? . (Any)) (void? . (Any)) (eq? . (Any Any))))

(define (insert-exp e)
  (match e
    [(Var x)
     (Var x)]
    [(HasType exp type)
     (HasType (insert-exp e) type)] 
    [(Int n) (Inject (Int n) 'Integer)]
    [(Bool bool) (Inject (Bool bool) 'Boolean)]
    [(Void) (Inject (Void) 'Void)]
    [(FunRefArity f arity) (Inject (FunRefArity f arity) (append (duplicate 'Any arity) '(-> Any)))]
    [(Let x e body)
     (Let x (insert-exp e) (insert-exp body))]
    [(Prim 'vector es)
     (Inject (Prim 'vector (map insert-exp es)) `(Vector ,@(duplicate 'Any (length es))))]
    [(Prim op es)
     (define inner-op (Prim op (map (lambda (x t) (if (eq? t 'Any) (insert-exp x) (Project (insert-exp x) t))) es (match-alist op op-input-types))))
     (if (not (eq? 'Any (match-alist op op-return-types)))
         (Inject inner-op (match-alist op op-return-types))
         inner-op)]
    [(If cond exp else) (If (Prim 'eq? (list (insert-exp cond) (Inject (Bool #f) 'Boolean)))
                            (insert-exp else) (insert-exp exp))]
    [(Apply f es)
     (Apply (Project (insert-exp f) (append (duplicate 'Any (length es)) '(-> Any))) (map insert-exp es))]
    [(Exit) (Exit)]
    [(Lambda ps rT body)
     (Inject (Lambda (map (lambda (x) `(,x : Any)) ps) rT (insert-exp body)) (append (duplicate 'Any (length ps)) '(-> Any)))]
    ))
    

(define (insert-def def)
  (match def
    [(Def name ps rt info body)
     (Def name (map (lambda (x) `(,x : Any)) ps) rt info (if (eq? 'Any rt) (insert-exp body) (Project (insert-exp body) rt)))]))


(define (cast-insert p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map insert-def ds))]
    ))

(define (operator-types)
  ;; copied for type-check-R2.rkt
  '((+ . ((Integer Integer) . Integer))
    (- . ((Integer Integer) . Integer))
    (and . ((Boolean Boolean) . Boolean))
    (or . ((Boolean Boolean) . Boolean))
    (< . ((Integer Integer) . Boolean))
    (<= . ((Integer Integer) . Boolean))
    (> . ((Integer Integer) . Boolean))
    (>= . ((Integer Integer) . Boolean))
    (- . ((Integer) . Integer))
    (not . ((Boolean) . Boolean))
    (read . (() . Integer))
    ;; new operators
    (integer? . ((Any) . Boolean))
    (vector? . ((Any) . Boolean))
    (procedure? . ((Any) . Boolean))
    (void? . ((Any) . Boolean))
    (tag-of-any . ((Any) . Integer))
    (make-any . ((_ Integer) . Any))
    ))


(define type-predicates
  (set 'boolean? 'integer? 'vector? 'procedure? 'void?))

(define (combine-types t1 t2)
  (match (list t1 t2)
    [(list '_ t2) t2]
    [(list t1 '_) t1]
    [(list `(Vector ,ts1 ...)
           `(Vector ,ts2 ...))
     `(Vector ,@(for/list ([t1 ts1] [t2 ts2])
                  (combine-types t1 t2)))]
    [(list `(,ts1 ... -> ,rt1)
           `(,ts2 ... -> ,rt2))
     `(,@(for/list ([t1 ts1] [t2 ts2])
           (combine-types t1 t2))
       -> ,(combine-types rt1 rt2))]
    [else
     t1]))

;; type-check-op is copy and pasted from type-check-R2
;; to get updated unary-op-types and type-equal?. 
(define (type-check-op op arg-types)
  (match (dict-ref (operator-types) op)
    [`(,param-types . ,return-type)
     (for ([at arg-types] [pt param-types]) 
       (unless (type-equal? at pt)
         (error 'type-check-op
                "type error: argument type ~a not equal to parameter type ~a"
                at pt)))
     return-type]
    [else
     (error 'type-check-op "unrecognized operator ~a" op)]))

;; type-check-apply is copied and pasted from type-check-R5 to
;; get the updated check-bounds-exp.
(define (type-check-apply env e es)
  (define-values (e^ ty) ((check-bounds-exp env) e))
  (define-values (e* ty*) (for/lists (e* ty*) ([e (in-list es)])
                            ((check-bounds-exp env) e)))
  (match ty
    [`(,ty^* ... -> ,rt)
     (for ([arg-ty ty*] [param-ty ty^*])
       (unless (type-equal? arg-ty param-ty)
         (error "type error: argument/parameter mismatch: ~a != ~a"
                arg-ty param-ty e es)))
     (values e^ e* rt)]
    [else (error "type error: expected a function, not" ty)]))

(define (flat-ty? ty)
  (match ty
    [(or `Integer `Boolean '_ `Void)
     #t]
    ;; The following is a special case to handle programs
    ;; after closure conversion. -Jeremy
    [`(Vector ((Vector _) ,ts ... -> Any))
     (for/and ([t ts]) (eq? t 'Any))]
    [`(Vector ,ts ...)
     (for/and ([t ts]) (eq? t 'Any))]
    [`(Vectorof Any)
     #t]
    [`(,ts ... -> ,rt)
     (and (eq? rt 'Any) (for/and ([t ts]) (eq? t 'Any)))]
    [else
     #f]
    ))

(define (check-bounds-exp2 env)
  (lambda (e)
    (define recur (check-bounds-exp env))
    (match e
      [(Prim 'procedure-arity (list e))
       (define-values (e^ t) (recur e))
       (match t
         ;; before closure conversion
         [`(,ts ... -> ,rt)
          (values (Prim 'procedure-arity (list e^)) 'Integer)]
         ;; after closure conversion
         [`(Vector ((Vector _) ,ts ... -> ,rt))
          (values (Prim 'procedure-arity (list e^)) 'Integer)]
         [else (error 'check-bounds-exp
                      "expected a function in procedure-arity, not ~a" t)])]
      [(Prim 'vector-length (list e))
       (define-values (e^ t) (recur e))
       (match t
         [`(Vector ,ts ...)
          (values (Prim 'vector-length (list e^))  'Integer)]
         [else (error 'check-bounds-exp
                      "expected a vector in vector-lenfth, not ~a" t)])]
      [(Prim 'vector-ref (list e ei))
       (define-values (e^ t) (recur e))
       (define-values (i it) (recur ei))
       (unless (type-equal? it 'Integer)
         (error 'check-bounds-exp "vector-ref: index not Integer: ~a" it))
       (match (list t i)
         [(list `(Vector ,ts ...) (Int i^))
          (unless (and (exact-nonnegative-integer? i^)
                       (i^ . < . (length ts)))
            (error 'check-bounds-exp "invalid index ~a in ~a" i^ e))
          (let ([t (list-ref ts i^)])
            (values (Prim 'vector-ref
                          (list e^ (Int i^)))
                    t))]
         [(list `(Vectorof ,t) i)
          (define v (gensym 'tmp))
          (define index (gensym 'tmp))
          (values (Let v e^ (HasType (Let index i (HasType (If (HasType (Prim '< (list (HasType (Var index) 'Integer) (HasType (Prim 'vector-length (list (HasType (Var v) '(Vectorof Any)))) 'Integer))) 'Boolean)
                                                               (HasType (Prim 'vector-ref (list (HasType (Var v) '(Vectorof Any)) (HasType (Var index) 'Integer))) t)
                                                               (HasType (Exit) t)) t)) t)) t)]
         [else (error "expected a vector in vector-ref, not" t)])]
      [(AllocateClosure size t arity)
           (values (AllocateClosure size t arity) t)]
      [(FunRefArity f n)
        (let ([t (dict-ref env f)])
          (values (FunRefArity f n) t))]
      [(Prim 'vector-set! (list e-vec e-i e-arg))
       (define-values (e-vec^ t-vec) (recur e-vec))
       (define-values (i it) (recur e-i))
       (define-values (e-arg^ t-arg) (recur e-arg))
       (unless (type-equal? it 'Integer)
         (error 'check-bounds-exp "vector-set!: index not Integer: ~a" it))
       (match (list t-vec i)
         [(list `(Vector ,ts ...) (Int i^))
          (unless (and (exact-nonnegative-integer? i^)
                       (i^ . < . (length ts)))
            (error 'check-bounds-exp "invalid index ~a in ~a" i^ e))
          (unless (type-equal? (list-ref ts i^) t-arg)
            (error 'check-bounds-exp "type mismatch in vector-set! ~a ~a" 
                   (list-ref ts i^) t-arg))
          (values (Prim 'vector-set! (list e-vec^ (Int i^) e-arg^))  'Void)]
         [(list `(Vectorof ,t) i)
          (unless (type-equal? t t-arg)
            (error 'check-bounds-exp "type mismatch in vector-set! ~a ~a" 
                   t t-arg))
          (define v (gensym 'tmp))
          (define index (gensym 'tmp))
          (values (Let v e-vec^ (HasType (Let index i (HasType (If (HasType (Prim '< (list (HasType (Var index) 'Integer) (HasType (Prim 'vector-length (list (HasType (Var v) '(Vectorof Any)))) 'Integer))) 'Boolean)
                                                               (HasType (Prim 'vector-set! (list (HasType (Var v) '(Vectorof Any)) (HasType (Var index) 'Integer) e-arg^)) 'Void)
                                                               (HasType (Exit) 'Void)) 'Void)) 'Void)) 'Void)]
         [else
          (error 'check-bounds-exp "expected a vector in vector-set!, not ~a"
                 t-vec)])]
      [(Inject e ty)
       (unless (flat-ty? ty)
         (error 'check-bounds-exp
                "may only inject a value of flat type, not ~a" ty))
       (define-values (new-e e-ty) (recur e))
       (cond
        [(type-equal? e-ty ty)
         (values (Inject new-e ty) 'Any)]
        [else
         (error 'check-bounds-exp
                "injected expression does not have expected type" 
                e e-ty ty)])]
      [(ValueOf e ty)
       (define-values (new-e e-ty) (recur e))
       (values (ValueOf new-e ty) ty)]
      [(Project e ty)
       (unless (flat-ty? ty)
         (error 'check-bounds-exp
                "may only project to a flat type, not ~a" ty))
       (define-values (new-e e-ty) (recur e))
       (cond
         [(type-equal? e-ty 'Any)
          (values (Project new-e ty) ty)]
        [else
         (error 'check-bounds-exp
                "project expression does not have type Any" e)])]
      [(Prim pred (list e))
       #:when (set-member? type-predicates pred)
       (define-values (new-e e-ty) (recur e))
       (cond
         [(type-equal? e-ty 'Any)
          (values (Prim pred (list new-e)) 'Boolean)]
         [else
          (error 'check-bounds-exp
                 "type predicate expected argument of type Any, not" e-ty)])]
      [(Exit)
       (values (Exit) '_)]
      [(HasType (Var x) t)
       ((check-bounds-exp env) (Var x))]
      [(Var x)
       (define t (dict-ref env x))
       (define var (cond [(typed-vars) (HasType (Var x) t)]
                         [else (Var x)]))
       (values var t)]
      [(Int n) (values (Int n) 'Integer)]
      [(Bool b) (values (Bool b) 'Boolean)]
      [(Let x e body)
       (define-values (e^ Te) (recur e))
       (define-values (b Tb) ((check-bounds-exp (cons `(,x . ,Te) env)) body))
       (values (Let x e^ b) Tb)]
      [(If cnd thn els)
       (define-values (c Tc) (recur cnd))
       (define-values (t Tt) (recur thn))
       (define-values (e Te) (recur els))
       (unless (type-equal? Tc 'Boolean)
         (error 'check-bounds-exp
                "expected condition of if to have type Boolean, not ~a" Tc))
       (unless (type-equal? Tt Te)
         (error 'check-bounds-exp
                "branches of if must have the same type, but ~a != ~a"
                Tt Te))
       (values (If c t e) (combine-types Tt Te))]
      [(Prim 'eq? (list e1 e2))
       (define-values (e1^ T1) (recur e1))
       (define-values (e2^ T2) (recur e2))
       (unless (type-equal? T1 T2)
         (error 'check-bounds-exp
                "arguments of eq? must have the same type, but ~a != ~a"
                T1 T2))
       (values (Prim 'eq? (list e1^ e2^)) 'Boolean)]
      [(Void) (values (Void) 'Void)]
      [(Prim 'vector es)
       (define-values (e* t*) (for/lists (e* t*) ([e es])
                                (recur e)))
       (let ([t `(Vector ,@t*)])
         (values (HasType (Prim 'vector e*) t) t))]
      [(Prim 'closure es)
       (define-values (e* t*) (for/lists (e* t*) ([e es])
                                (recur e)))
       (let ([t `(Vector ,@t*)])
         (values (HasType (Prim 'closure e*) t) t))]
      [(Prim 'eq? (list arg1 arg2))
       (define-values (e1 t1) (recur arg1))
       (define-values (e2 t2) (recur arg2))
       (match* (t1 t2)
         [(`(Vector ,ts1 ...) `(Vector ,ts2 ...))
          ;; allow comparison of vectors of different element types
          (void)]
         [(other wise)
          (unless (type-equal? t1 t2)
            (error 'check-bounds-exp
                   "type error: different argument types of eq?: ~a != ~a"
                   t1 t2))])
       (values (Prim 'eq? (list e1 e2)) 'Boolean)]
      [(Prim op es)
       (define-values (new-es ts)
         (for/lists (new-es ts) ([e es])
           (recur e)))
       (define t-ret (type-check-op op ts))
       (values (Prim op new-es) t-ret)]
      [(HasType (Prim 'vector es) t)
       ((check-bounds-exp env) (Prim 'vector es))]
      [(HasType (Prim 'closure es) t)
       ((check-bounds-exp env) (Prim 'closure es))]
      [(HasType e t)
       (define-values (e^ t^) (recur e))
       (unless (type-equal? t t^)
         (error 'check-bounds-exp "type mismatch in HasType" t t^))
       (values (HasType e^ t) t)]
      [(GlobalValue name)
       (values (GlobalValue name) 'Integer)]
      [(Allocate size t)
       (values (Allocate size t) t)]
      [(AllocateClosure size t arity)
       (values (AllocateClosure size t arity) t)]
      [(Collect size)
       (values (Collect size) 'Void)]
      [(FunRef f)
       (let ([t (dict-ref env f)])
         (values (FunRef f) t))]
      [(Apply e es)
       (define-values (e^ es^ rt) (type-check-apply env e es))
       (values (Apply e^ es^) rt)]
      [(Call e es)
       (define-values (e^ es^ rt) (type-check-apply env e es))
       (values (Call e^ es^) rt)]
      [(Lambda (and bnd `([,xs : ,Ts] ...)) rT body)
       (define-values (new-body bodyT) 
         ((check-bounds-exp (append (map cons xs Ts) env)) body))
       (define ty `(,@Ts -> ,rT))
       (cond
        [(type-equal? rT bodyT)
         (values (Lambda bnd rT new-body) ty)]
        [else
         (error 'check-bounds-exp
                "function body's type ~a does not match return type ~a"
                bodyT rT)
         ])]
      [(Lambda (and bnd `([,xs : ,Ts] ...)) rT body)
       (define-values (new-body bodyT) 
         ((check-bounds-exp (append (map cons xs Ts) env)) body))
       (define ty `(,@Ts -> ,rT))
       (cond
        [(type-equal? rT bodyT)
         (values (Lambda bnd rT new-body) ty)]
        [else
         (error 'check-bounds-exp
                "function body's type ~a does not match return type ~a"
                bodyT rT)
         ])]
      [else 
       (error 'check-bounds-exp "R6/unmatched ~a" e)]
      )))

(define (check-bounds-exp env)
  (lambda (e)
    (define-values (exp t) ((check-bounds-exp2 env) e))
    (match exp
      [(HasType e type) (values (HasType e type) t)]
      [else (values (HasType exp t) t)])))

(define (check-bounds-def def old-env)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info body)
     (define new-env (append (map cons xs ps) old-env))
     (define-values (exp type) ((check-bounds-exp new-env) body))
     (Def name p:t* rt info exp)]))

(define (check-bounds p)
  (match p
    [(ProgramDefs info ds)
     (define new-env (for/list ([d ds]) 
                       (cons (Def-name d) (fun-def-type d))))
     (ProgramDefs info (map (lambda (d) (check-bounds-def d new-env)) ds))]
    ))

(define (reveal-casts-exp e)
  (match e
    [(Var x)
     (Var x)]
    [(HasType exp type)
     (HasType (reveal-casts-exp exp) type)] 
    [(Int n) (Int n)]
    [(Bool bool) (Bool bool)]
    [(FunRefArity f arity) (FunRefArity f arity)]
    [(Void) (Void)]
    [(Let x e body)
     (Let x (reveal-casts-exp e) (reveal-casts-exp body))]
    [(Prim op (list exp)) #:when(member op '(boolean? integer? vector? procedure? void?))
                          (Prim 'eq? (list (HasType (Prim 'tag-of-any (list (reveal-casts-exp exp))) 'Integer)
                                (HasType (Int (any-tag (match-alist op op-type-checks))) 'Integer)))]
    [(Prim op es)
     (Prim op (map reveal-casts-exp es))]
    [(If cond exp else) (If (reveal-casts-exp cond) (reveal-casts-exp exp) (reveal-casts-exp else))]
    [(Apply f es)
     (Apply (reveal-casts-exp f) (map reveal-casts-exp es))]
    [(Exit) (Exit)]
    [(Lambda p:t rT body)
     (Lambda p:t rT (reveal-casts-exp body))]
    [(Project e ty) #:when (and (type-is-vector? ty) (not (type-is-vectorof? ty)))
     (define tmp (gensym 'tmp))
     (Let tmp (reveal-casts-exp e)
          (HasType (If (HasType (Prim 'eq? (list (HasType (Prim 'tag-of-any (list (HasType (Var tmp) 'Any))) 'Integer)
                                                (HasType (Int (any-tag ty)) 'Integer))) 'Boolean)
                       (HasType (If (HasType (Prim 'eq? (list (HasType (Prim 'vector-length (list (HasType (ValueOf (HasType (Var tmp) 'Any) '(Vectorof Any)) '(Vectorof Any)))) 'Integer)
                                                (HasType (Int (sub1 (length ty)) 'Integer)))) 'Boolean)
                                    (HasType (ValueOf (HasType (Var tmp) 'Any) ty) ty)
                                    (HasType (Exit) ty)) ty)
                       (HasType (Exit) ty)) ty))]
    [(Project e ty) #:when (type-is-function? ty)
     (define tmp (gensym 'tmp))
     (Let tmp (reveal-casts-exp e)
          (HasType (If (HasType (Prim 'eq? (list (HasType (Prim 'tag-of-any (list (HasType (Var tmp) 'Any))) 'Integer)
                                                (HasType (Int (any-tag ty)) 'Integer))) 'Boolean)
                       (HasType (If (HasType (Prim 'eq? (list (HasType (Prim 'procedure-arity (list (HasType (ValueOf (HasType (Var tmp) 'Any) '(Any -> Any)) '(Any -> Any)))) 'Integer)
                                                (HasType (Int (type-arity ty)) 'Integer))) 'Boolean)
                                    (HasType (ValueOf (HasType (Var tmp) 'Any) ty) ty)
                                    (HasType (Exit) ty)) ty)
                       (HasType (Exit) ty)) ty))]
    [(Project e ty)
     (define tmp (gensym 'tmp))
     (Let tmp (reveal-casts-exp e)
          (HasType (If (HasType (Prim 'eq? (list (HasType (Prim 'tag-of-any (list (HasType (Var tmp) 'Any))) 'Integer)
                                                (HasType (Int (any-tag ty)) 'Integer))) 'Boolean)
                       (HasType (ValueOf (HasType (Var tmp) 'Any) ty) ty)
                       (HasType (Exit) ty)) ty))]
    [(Inject e ty)
     (Prim 'make-any (list (reveal-casts-exp e) (HasType (Int (any-tag ty)) 'Integer)))]
    ))


(define (reveal-casts-def def)
  (match def
    [(Def name ps rt info body)
     (Def name ps rt info (reveal-casts-exp body))]))

(define (reveal-casts p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map reveal-casts-def ds))]
    ))

(define (convert-type t)
  (match t
    [`(,ts ... -> ,rt) `(Vector ((Vector _) ,@(map convert-type ts) -> ,(convert-type rt)))]
    [`(Vector ,ts ...) `(Vector ,@(map convert-type ts))]
    [x x]))

(define (convert-type-funref t)
  (match t
    [`(,ts ... -> ,rt) `((Vector _) ,@(map convert-type ts) -> ,(convert-type rt))]
    [`(Vector ,ts ...) `(Vector ,@(map convert-type ts))]
    [x x]))
  
(define (free-in-exp exp env)
  (match exp
    [(HasType (Var x) t)
     (if (member x env) (set ) (set (HasType (Var x) t)))]
    [(HasType exp t)
     (free-in-exp exp env)]
    [(Int n) (set )]
    [(Bool bool) (set )]
    [(Let x e body)
     (set-union (free-in-exp e env) (free-in-exp body (cons x env)))]
    [(Prim op es)
     (foldr (lambda (x b) (set-union (free-in-exp x env) b)) (set ) es)]
    [(If cond exp else) (set-union (free-in-exp cond env) (free-in-exp exp env) (free-in-exp else env))]
    [(Apply f es) (set-union (free-in-exp f env) (foldr (lambda (x b) (set-union (free-in-exp x env) b)) (set ) es))]
    [(Lambda (and bnd `([,xs : ,Ts] ...)) rT body)
     (free-in-exp body (append xs env))]
    [(ValueOf exp type) (free-in-exp exp env)]
    [(Exit) (set )]))

(define (convert-exp exp)
  (match exp
    [(Var x)
     (values (Var x) '())]
    [(Void) (values (Void) '())]
    [(HasType (FunRefArity f i) t)
     (values (HasType (Closure i (list (HasType (FunRef f) (convert-type-funref t)))) (convert-type t)) '())]
    [(HasType (Apply f es) t)
     (define tmp (gensym 'tmp))
     (define-values (f-exp f-defs) (convert-exp f))
     (define processed (split-pairs (for/list ([e es]) (begin (define-values (exp defs) (convert-exp e)) `(,exp . ,defs)))))
     (define clos-type ((lambda (x) (match x [(HasType clos t2) t2])) f-exp))
     (values (HasType (Let tmp f-exp (HasType
                                      (Apply (HasType (Prim 'vector-ref `(,(HasType (Var tmp) clos-type) ,(HasType (Int 0) 'Integer))) (list-ref clos-type 1))
                                             (cons (HasType (Var tmp) clos-type) (car processed))) (convert-type t))) (convert-type t))
             (append f-defs (cdr processed)))]
    [(HasType (Lambda (and bnd `([,xs : ,Ts] ...)) rT body) t)
     (define free-vars (map (lambda (x) (match x [(HasType y t) (HasType y (convert-type t))]))
                            (set->list (free-in-exp body xs))))
     (define name (gensym 'lambda))
     (define clos-name (gensym 'clos))
     (define-values (fixed-body defs) (convert-exp body))
     (define fixed-free-vars (map (lambda (x) (define-values (y z) (convert-exp x)) x) free-vars))
     (define clos-type `(Vector ,(convert-type-funref t) ,@(map (lambda (x) (match x [(HasType x t) t])) fixed-free-vars)))
     (values (HasType (Closure (length bnd) (cons (HasType (FunRef name) (list-ref clos-type 1)) fixed-free-vars)) clos-type) 
             (cons (Def name (cons `(,clos-name : ,clos-type) bnd) rT '()
                        (expand-into-lets (map (lambda (x) (match x [(HasType (Var y) t) y])) fixed-free-vars)
                                          (map (lambda (n) (HasType (Prim 'vector-ref `(,(HasType (Var clos-name) clos-type) ,(HasType (Int n) 'Integer))) (list-ref clos-type (add1 n)))) (range 1 (add1 (length free-vars))))
                                          fixed-body rT)) defs))]
    [(HasType exp type)
     (define-values (conv-exp defs) (convert-exp exp))
     (values (HasType conv-exp (convert-type type)) defs)] 
    [(Int n) (values (Int n) '())]
    [(Bool bool) (values (Bool bool) '())]
    [(Let x e body)
     (define-values (e-conv-exp e-defs) (convert-exp e))
     (define-values (body-conv-exp body-defs) (convert-exp body))
     (values (Let x e-conv-exp body-conv-exp) (append e-defs body-defs))]
    [(Prim op es)
     (define processed (split-pairs (for/list ([e es]) (begin (define-values (exp defs) (convert-exp e)) `(,exp . ,defs)))))
     (values (Prim op (car processed))
             (flatten (cdr processed)))]
    [(If cond exp else)
     (define-values (cond-exp cond-defs) (convert-exp cond))
     (define-values (exp-exp exp-defs) (convert-exp exp))
     (define-values (else-exp else-defs) (convert-exp else))
     (values (If cond-exp exp-exp else-exp)
             (append cond-defs exp-defs else-defs))]
    [(Exit) (values (Exit) '())]
    [(ValueOf exp type) (define-values (conv-exp exp-defs) (convert-exp exp))
                        (values (ValueOf conv-exp type) exp-defs)]
    ))

(define (convert-def def)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info body)
     (define-values (conv-body defs) (convert-exp body))
     (define ts (map (lambda (x t) `(,x : ,(convert-type t))) xs ps))
     (cons (Def name (if (eq? name 'main) ts (cons `(,(gensym 'clos) : (Vector ,(append ps '(->) (list rt)))) ts)) rt info conv-body) defs)]))
  
(define (convert-to-closure p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (append-map (lambda (def) (convert-def def)) ds))]
    ))

(define (make-limited-list types)
  (if (> (length types) 6)
      (let [(vec (gensym 'vec))] (values vec (append (slice types 0 5) `((,vec : (Vector ,@(map (lambda (x) (match x [`(,v : ,t) t])) (slice types 5 (length types)))))))))
      (values #f types)))

(define (get-vect-indices types)
  (if (> (length types) 6)
      (map (lambda (x n) (match x [`(,var : ,t) `(,var . ,n)])) (slice types 5 (length types)) (range (length (slice types 5 (length types)))))
      '()))

(define (limit-exp exp vec vect-indices vec-type)
  (match exp
    [(Var x) #:when (match-alist x vect-indices) (Prim 'vector-ref (list (HasType (Var vec) vec-type) (HasType (Int (match-alist x vect-indices)) 'Integer)))]
    [(Var x)
     (Var x)]
    [(FunRef x) (FunRef x)] 
    [(Int n) (Int n)]
    [(Void) (Void)]
    [(Bool bool) (Bool bool)]
    [(Closure i es) (Closure i (map (lambda (e) (limit-exp e vec vect-indices vec-type)) es))]
    [(Let x e body)
     (Let x (limit-exp e vec vect-indices vec-type) (limit-exp body vec vect-indices vec-type))]
    [(Prim op es)
     (Prim op (for/list ([e es]) (limit-exp e vec vect-indices vec-type)))]
    [(If cond exp else) (If (limit-exp cond vec vect-indices vec-type) (limit-exp exp vec vect-indices vec-type) (limit-exp else vec vect-indices vec-type))]
    [(HasType (Apply (HasType f t) es) type) #:when (> (length es) 6)
                                             (HasType (Apply (HasType (limit-exp f vec vect-indices vec-type) (append (slice t 0 5) `((Vector ,@(slice t 5 (index-of t '->)))) (slice t (index-of t '->) (length t))))
                                                             (append (map (lambda (x) (limit-exp x vec vect-indices vec-type)) (slice es 0 5))
                                                                     `(,(HasType (Prim 'vector (map (lambda (x) (limit-exp x vec vect-indices vec-type)) (slice es 5 (length es)))) `(Vector ,@(slice t 5 (index-of t '->))))))) type)]
    [(Apply f es) (Apply (limit-exp f vec vect-indices vec-type) (map (lambda (x) (limit-exp x vec vect-indices vec-type)) es))]
    [(Exit) (Exit)]
    [(ValueOf exp type) (ValueOf (limit-exp exp vec vect-indices vec-type) type)]
    [(HasType exp type)
     (HasType (limit-exp exp vec vect-indices vec-type) type)]))

(define (list-ref-safe ls n)
  (if (>= n (length ls)) #f (list-ref ls n)))

(define (limit-def def)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info body)
     (define-values (vec types) (make-limited-list p:t*))
     (define vect-indices (get-vect-indices p:t*))
     (define limited-body (limit-exp body vec vect-indices ((lambda (x) (match x [`(,y : ,t) t] [else #f])) (list-ref-safe types 5))))
     (Def name types rt info limited-body)]))


(define (limit-functions p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map limit-def ds))]
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


(define (do-allocate vect len bytes base type arity)
  (HasType (Let '_ (HasType (If (HasType (Prim '< (list (HasType (Prim '+ (list (HasType (GlobalValue 'free_ptr) 'Integer) (HasType (Int bytes) 'Integer))) 'Integer) (HasType (GlobalValue 'fromspace_end) 'Integer))) 'Boolean)
                                (HasType (Void) 'Void)
                                (HasType (Collect bytes) 'Void)) 'Void)
                (HasType (Let vect (HasType (if arity (AllocateClosure len type arity) (Allocate len type)) type) base) type)) type))
  

(define (bulk-vector-set vect vars types)
  (expand-into-lets (duplicate '_ (length vars)) (make-vector-set-exps vect 0 vars (cdr types)) vect types))
  

(define (expose-exp e)
  (match e
    [(HasType (Prim 'vector es) type)
     (let* ([len (length es)] [bytes (* 8 len)] [vect (gensym 'vec)] [vars (generate-n-vars len)])
       (expand-into-lets vars (for/list ([e es]) (expose-exp e)) (do-allocate vect len bytes (bulk-vector-set (HasType (Var vect) type) vars type) type #f) type))]
    [(HasType (Closure i es) type)
     (let* ([len (length es)] [bytes (* 8 len)] [vect (gensym 'vec)] [vars (generate-n-vars len)])
       (expand-into-lets vars (for/list ([e es]) (expose-exp e)) (do-allocate vect len bytes (bulk-vector-set (HasType (Var vect) type) vars type) type i) type))]
    [(Prim op es)
     (Prim op (for/list ([e es]) (expose-exp e)))]
    [(Let x e body)
     (Let x (expose-exp e) (expose-exp body))]
    [(If cond exp else) (If (expose-exp cond) (expose-exp exp) (expose-exp else))]
    [(HasType exp type) (HasType (expose-exp exp) type)]
    [(Apply f es) (Apply (expose-exp f) (for/list ([e es]) (expose-exp e)))]
    [(ValueOf exp type) (ValueOf (expose-exp exp) type)]
    [x x]))

(define (expose-def def)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info body)
     (Def name p:t* rt info (expose-exp body))]))

(define (expose-allocation p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map expose-def ds))]))

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
    [(HasType (FunRef f) t)
     (let [(tmp (gensym "tmp"))]
       (values (HasType (Var tmp) t) `((,tmp . ,(HasType (FunRef f) t)))))]
    [(HasType (ValueOf exp type) t)
     (let [(tmp (gensym "tmp"))]
       (define-values (exp-val exp-alist) (rco-atom exp))
       (values (HasType (Var tmp) t) (cons `(,tmp . ,(HasType (ValueOf exp-val type) t)) exp-alist)))]
    [(HasType (Let x e body) type)
     (let [(tmp (gensym "tmp"))]
       (begin (define-values (e-val e-alist) (rco-atom e))
              (values (HasType (Var tmp) type) (append e-alist  `((,tmp . ,(HasType (Let x e-val (rco-exp body)) type)))))))]
    [(HasType (Apply f es) type)
     (let [(tmp (gensym "tmp")) (exps (split-pairs (for/list ([e (cons f es)]) (begin (define-values (var alist) (rco-atom e)) `(,var . ,alist)))))]
       (values (HasType (Var tmp) type) (append (cdr exps) `((,tmp . ,(HasType (Apply (car (car exps)) (cdr (car exps))) type))))))]
    [(HasType (Prim op es) type)
     (let [(tmp (gensym "tmp")) (exps (split-pairs (for/list ([e es]) (begin (define-values (var alist) (rco-atom e)) `(,var . ,alist)))))]
       (values (HasType (Var tmp) type) (append (cdr exps) `((,tmp . ,(HasType (Prim op (car exps)) type))))))]
    [(HasType (If cond exp else) type)
     (let [(tmp (gensym "tmp"))]
       (begin (define-values (cond-val cond-alist) (rco-atom cond))
              (define-values (exp-val exp-alist) (rco-atom exp))
              (define-values (else-val else-alist) (rco-atom else))
              (values (HasType (Var tmp) type) (append cond-alist exp-alist else-alist `((,tmp . ,(rco-exp (HasType (If cond-val exp-val else-val) type))))))))]
    [(HasType x type) ;Case for allocate, global_value, collect, Exit
     (let [(tmp (gensym "tmp"))]
       (values (HasType (Var tmp) type) `((,tmp . ,(HasType x type)))))]
    ))

(define (rco-exp e)
  (match e
    [(Var x) (Var x)]
    [(Int n) (Int n)]
    [(Bool bool) (Bool bool)]
    [(Void) (Void)]
    [(HasType (FunRef f) t) (let [(var (gensym 'tmp))]  (HasType (Let var (HasType (FunRef f) t) (HasType (Var var) t)) t))]
    [(HasType (Apply f es) type)
     (let [(exps (split-pairs (for/list ([e (cons f es)]) (begin (define-values (var alist) (rco-atom e)) `(,var . ,alist)))))] (expand-alist (cdr exps) (Apply (car (car exps)) (cdr (car exps))) type))]
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
    [(HasType (ValueOf exp type) t)
     (define-values (var alist) (rco-atom exp))
     (expand-alist alist (ValueOf var type) type)]
    [(HasType exp type)
     (HasType (rco-exp exp) type)]
    [(Collect bytes)
     (Collect bytes)]
    [(GlobalValue name)
     (GlobalValue name)]
    [(Allocate n type)
     (Allocate n type)]
    [(AllocateClosure n type arity)
     (AllocateClosure n type arity)]
    [(Exit) (Exit)]
    ))

(define (rco-def def)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info body)
     (Def name p:t* rt info (rco-exp body))]))

;; remove-complex-opera* : R1 -> R1
(define (remove-complex-opera* p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map rco-def ds))]
    ))


;;Assigns a variable to whatever an expression would return then adds the tail on
(define (do-assignment exp var tail)
  (match exp
    [(Seq stmt seq-tail) (Seq stmt (do-assignment seq-tail var tail))]
    [(HasType (Call f es) t) (Seq (Assign var (HasType (Call f es) t)) tail)]
    [(HasType (Exit) t) (Seq (Assign var (HasType (Exit) t)) tail)]
    [(Return (HasType x t)) (Seq (Assign var (HasType x t)) tail)]
    ))

(define (explicate-assign exp var tail cgraph)
  (match exp
    [(HasType (If pred then else) t)
     (let ([tail-block (gensym "block")])
       (begin (define processor (lambda (exp cgraph) (explicate-assign exp var (Goto tail-block) cgraph)))
              (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then else cgraph processor processor))
              (values pred-exp (remove-duplicates pred-vars) (cons `(,tail-block . ,tail) pred-cgraph))))]
    [(HasType (Let x exp body) t) (begin (define-values (exp-body body-vars body-graph) (explicate-assign body var tail cgraph))
                                         (define-values (body-tail vars newgraph) (explicate-assign exp (Var x) exp-body body-graph))
                                         (values body-tail (cons (Var x) (remove-duplicates (append body-vars vars))) newgraph))]
    [(HasType (Apply f es) t) (values (do-assignment (HasType (Call f es) t) var tail) '() cgraph)]
    [x (begin (define-values (exp-tail exp-vars exp-graph) (explicate-tail exp cgraph))
              (values (do-assignment exp-tail var tail) exp-vars exp-graph))
       ]))

(define (explicate-pred e true-exp false-exp cgraph true-processor false-processor)
  (match e
    [(HasType (Bool #t) t)
     (define-values (true-tail vars true-cgraph) (true-processor true-exp cgraph))
     (values true-tail vars true-cgraph)]
    [(HasType (Bool #f) t)
     (define-values (false-tail vars false-cgraph) (false-processor false-exp cgraph))
     (values false-tail '() false-cgraph)]
    [(HasType (Var x) t) (let ([then-lbl (gensym "block")] [else-lbl (gensym "block")])
                           (define-values (true-tail true-vars true-cgraph) (true-processor true-exp cgraph))
                           (define-values (false-tail false-vars all-cgraph) (false-processor false-exp true-cgraph))
                           (values (IfStmt (Prim 'eq? (list (HasType (Var x) t) (HasType (Bool #t) 'Boolean))) (Goto then-lbl) (Goto else-lbl)) (append true-vars false-vars) (cons `(,then-lbl . ,true-tail)
                                                                                                                                                                                    (cons `(,else-lbl . ,false-tail) all-cgraph))))]
    [(HasType (Prim 'not (list var)) t) (begin (define-values (result result-vars result-cgraph) (explicate-pred var false-exp true-exp cgraph false-processor true-processor))
                                               (values result result-vars result-cgraph))]
    [(HasType (Prim 'vector-ref (list vect int)) t)
     (let ([temp (gensym "tmp")] [then-lbl (gensym "block")] [else-lbl (gensym "block")])
       (define-values (true-tail true-vars true-cgraph) (true-processor true-exp cgraph))
       (define-values (false-tail false-vars all-cgraph) (false-processor false-exp true-cgraph))
       (define-values (tail vars assigned-cgraph) (explicate-assign (HasType (Prim 'vector-ref (list vect int)) t) (Var temp) (IfStmt (Prim 'eq? (list (HasType (Var temp) 'Boolean) (HasType (Bool #t) 'Boolean))) (Goto then-lbl) (Goto else-lbl)) (cons `(,then-lbl . ,true-tail)
                                                                                                                                                                                                                                                           (cons `(,else-lbl . ,false-tail) all-cgraph))))
       (values tail (append vars true-vars false-vars) assigned-cgraph))]
    [(HasType (Apply f es) t)  (let ([temp (gensym "tmp")] [then-lbl (gensym "block")] [else-lbl (gensym "block")])
                                 (define-values (true-tail true-vars true-cgraph) (true-processor true-exp cgraph))
                                 (define-values (false-tail false-vars all-cgraph) (false-processor false-exp true-cgraph))
                                 (define-values (tail vars assigned-cgraph) (explicate-assign (HasType (Apply f es) t) (Var temp) (IfStmt (Prim 'eq? (list (HasType (Var temp) 'Boolean) (HasType (Bool #t) 'Boolean))) (Goto then-lbl) (Goto else-lbl)) (cons `(,then-lbl . ,true-tail)
                                                                                                                                                                                                                                                               (cons `(,else-lbl . ,false-tail) all-cgraph))))
                                 (values tail (append true-vars false-vars vars) assigned-cgraph))]
    [(HasType (Prim cmp es) t) (let ([then-lbl (gensym "block")] [else-lbl (gensym "block")])
                                 (define-values (true-tail true-vars true-cgraph) (true-processor true-exp cgraph))
                                 (define-values (false-tail false-vars all-cgraph) (false-processor false-exp true-cgraph))
                                 (values (IfStmt (Prim cmp es) (Goto then-lbl) (Goto else-lbl)) (append true-vars false-vars) (cons `(,then-lbl . ,true-tail)
                                                                                                                                    (cons `(,else-lbl . ,false-tail) all-cgraph))))]
    [(HasType (Let x exp body) t) (begin (define-values (exp-body body-vars body-graph) (explicate-pred body true-exp false-exp cgraph true-processor false-processor))
                                         (define-values (tail vars tail-graph) (explicate-assign exp (Var x) exp-body body-graph)) (values tail (cons (Var x) (remove-duplicates (append body-vars vars))) tail-graph))]
    [(HasType (If pred then else) t) (begin (define processor (lambda (exp graph) (explicate-pred exp true-exp false-exp graph true-processor false-processor)))
                                            (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then else cgraph processor processor))
                                            (values pred-exp (remove-duplicates pred-vars) pred-cgraph))]
    [(HasType (ValueOf (HasType (Bool #t) t1) type) t2)  (define-values (true-tail vars true-cgraph) (true-processor true-exp cgraph))
                                                         (values true-tail vars true-cgraph)]
    [(HasType (ValueOf (HasType (Bool #f) t1) type) t2)  (define-values (false-tail vars false-cgraph) (false-processor false-exp cgraph))
                                                         (values false-tail '() false-cgraph)]
    [(Exit) (values (Exit) '() cgraph)]
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
     (begin 
       (define-values (pred-exp pred-vars pred-cgraph) (explicate-pred pred then else cgraph explicate-tail explicate-tail))
       (values pred-exp (remove-duplicates pred-vars) pred-cgraph))]
    [(HasType (Collect bytes) t)
     (values (Return (HasType (Collect bytes) t)) '() cgraph)]
    [(HasType (GlobalValue name) t)
     (values (Return (HasType (GlobalValue name) t)) '() cgraph)]
    [(HasType (Allocate n type) t)
     (values (Return (HasType (Allocate n type) t)) '() cgraph)]
    [(HasType (AllocateClosure n type arity) t)
     (values (Return (HasType (AllocateClosure n type arity) t)) '() cgraph)]
    [(HasType (FunRef f) t) (values (Return (HasType (FunRef f) t)) '() cgraph)]
    [(HasType (Apply f es) t) (values (TailCall f es) '() cgraph)]
    [(HasType (ValueOf exp type) t) (values (Return (HasType (ValueOf exp type) t)) '() cgraph)]
    [(HasType (Exit) t) (values (HasType (Exit) t) '() cgraph)]
    ))

(define (explicate-def def)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info body)
     (begin (define-values (tail vars graph) (explicate-tail body '()))
            (Def name p:t* rt `((locals . ,vars)) (cons `(,(symb-append name 'start) . ,tail) graph)))]))

;; explicate-control : R2 -> C1
(define (explicate-control p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map explicate-def ds))];(begin (define-values (tail vars graph) (explicate-tail e '())) (Program `((locals . ,vars)) (CFG (cons `(start . ,tail) graph))))]
    ))

(define (uncover-block tail)
  (match tail
    [(Seq (Assign var (HasType x type)) t)
     (cons `(,var . ,type) (uncover-block t))]
    [x '()]))

(define (uncover-def def)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info blocks)
     (let ([locals (remove-duplicates (append-map (lambda (x) (uncover-block (cdr x))) blocks))])
       (Def name p:t* rt `((locals . ,(append (map (lambda (v t) (cons (Var v) t)) xs ps) locals))) blocks))]))

  
(define (uncover-locals p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map uncover-def ds))]))

(define (calculate-tag2 types t-len)
  (if (empty? types) (add1 (* 2 t-len))
      (bitwise-ior (arithmetic-shift (if (type-is-vector? (car types)) 1 0) (+ (length types) 6))
                   (calculate-tag2 (cdr types) t-len))))

(define (calculate-tag types t-len arity)
  (bitwise-ior (arithmetic-shift arity 56) (calculate-tag2 types t-len)))

(define arg-regs  (vector->list arg-registers))

(define (get-arity-from-type type)
  (length (slice (list-ref type 1) 1 (index-of (list-ref type 1) '->))))

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
       [(FunRef f) (list (Instr 'leaq (list (FunRef f) (Var x))))]
       [(Call f es) (append (map (lambda (atm reg) (Instr 'movq (list (slct-atom atm) (Reg reg)))) es (slice arg-regs 0 (length es)))
                            (list (IndirectCallq (slct-atom f) (length es)) (Instr 'movq (list (Reg 'rax) (Var x)))))]
       [(Prim 'read es) (list (Callq 'read_int 0) (Instr 'movq (list (Reg 'rax) (Var x))))]
       [(Prim '- (list (HasType y t))) #:when (eq? (Var x) y) (list (Instr 'negq (list (Var x))))]
       [(Prim '- (list (HasType y t))) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'negq (list (Var x))))]
       [(Prim '+ (list (HasType y t1) (HasType v t2))) #:when (eq? (Var x) y) (list (Instr 'addq (list (slct-atom v) (Var x))))]
       [(Prim '+ (list (HasType y t1) (HasType v t2))) #:when (eq? (Var x) v) (list (Instr 'addq (list (slct-atom y) (Var x))))]
       [(Prim '+ (list (HasType y t1) (HasType v t2))) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'addq (list (slct-atom v) (Var x))))]
       [(Prim 'not (list (HasType y t))) #:when (eq? (Var x) y) (list (Instr 'xorq (list (Imm 1) y)))]
       [(Prim 'not (list (HasType y t))) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'xorq (list (Imm 1) (Var x))))]
       [(Prim 'eq? (list (HasType y t1) (HasType z t2))) (list (Instr 'cmpq (list (slct-atom y) (slct-atom z))) (Instr 'set (list 'e (ByteReg 'al))) (Instr 'movzbq (list (ByteReg 'al) (Var x))))]
       [(Prim '< (list (HasType y t1) (HasType z t2))) (list (Instr 'cmpq (list (slct-atom z) (slct-atom y))) (Instr 'set (list 'l (ByteReg 'al))) (Instr 'movzbq (list (ByteReg 'al) (Var x))))]
       [(Prim 'vector-ref (list (HasType vect t1) (HasType i t2))) #:when(type-is-vectorof? t1) (list (Instr 'movq (list (slct-atom i) (Reg 'r11))) (Instr 'addq (list (Imm 1) (Reg 'r11))) (Instr 'imulq (list (Imm 8) (Reg 'r11))) (Instr 'addq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 0) (Var x))))]
       [(Prim 'vector-ref (list (HasType vect t1) (HasType (Int n) t2))) (list (Instr 'movq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 (* 8 (add1 n))) (Var x))))]
       [(Prim 'vector-set! (list (HasType vect t1) (HasType i t2) (HasType arg t3))) #:when(type-is-vectorof? t1) (list (Instr 'movq (list (slct-atom i) (Reg 'r11))) (Instr 'addq (list (Imm 1) (Reg 'r11))) (Instr 'imulq (list (Imm 8) (Reg 'r11))) (Instr 'addq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (slct-atom arg) (Deref 'r11 0))) (Instr 'movq (list (Imm 0) (Var x))))]
       [(Prim 'vector-set! (list (HasType vect t1) (HasType (Int n) t2) (HasType arg t3))) (list (Instr 'movq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (slct-atom arg) (Deref 'r11 (* 8 (add1 n))))) (Instr 'movq (list (Imm 0) (Var x))))] 
       [(Prim 'make-any (list (HasType e t) (HasType (Int tag) int)))#:when(not (or (eq? tag 2) (eq? tag 3))) (list (Instr 'movq (list (slct-atom e) (Var x))) (Instr 'salq (list (Imm 3) (Var x))) (Instr 'orq (list (Imm tag) (Var x))))]
       [(Prim 'make-any (list (HasType e t) (HasType (Int tag) int))) (list (Instr 'movq (list (slct-atom e) (Var x))) (Instr 'andq (list (Imm 7) (Var x))))]
       [(Prim 'tag-of-any (list (HasType e t))) (list (Instr 'movq (list (slct-atom e) (Var x))) (Instr 'andq (list (Imm 7) (Var x))))]
       [(ValueOf (HasType exp t) type) #:when (or (type-is-vector? type) (type-is-function? type)) (list (Instr 'movq (list (Imm -8) (Var x))) (Instr 'andq (list (slct-atom exp) (Var x))))]
       [(ValueOf (HasType exp t) type) (list (Instr 'movq (list (slct-atom exp) (Var x))) (Instr 'sarq (list (Imm 3) (Var x))))]
       [(Exit) (list (Instr 'movq (list (Imm -1) (Reg 'rdi))) (Callq 'exit 1))]
       [(Prim 'procedure-arity (list (HasType exp t))) (list (Instr 'movq (list (slct-atom exp) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 0) (Reg 'r11))) (Instr 'sarq (list (Imm 57) (Reg 'r11))) (Instr 'movq (list (Reg 'r11) (Var x))))]
       [(Prim 'vector-length (list (HasType exp t))) (list (Instr 'movq (list (slct-atom exp) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 0) (Reg 'r11))) (Instr 'andq (list (Imm 126) (Reg 'r11))) (Instr 'sarq (list (Imm 1) (Reg 'r11))) (Instr 'movq (list (Reg 'r11) (Var x))))]
       [(Allocate len types) (let ([tag (calculate-tag (reverse (cdr types)) (length (cdr types)) 0)])
                               (list (Instr 'movq (list (Global 'free_ptr) (Var x))) (Instr 'addq (list (Imm (* 8 (add1 len))) (Global 'free_ptr))) (Instr 'movq (list (Var x) (Reg 'r11))) (Instr 'movq (list (Imm tag) (Deref 'r11 0)))))]
       [(AllocateClosure len types arity) (let ([tag (calculate-tag (reverse (cdr types)) (length (cdr types)) arity)])
                                            (list (Instr 'movq (list (Global 'free_ptr) (Var x))) (Instr 'addq (list (Imm (* 8 (add1 len))) (Global 'free_ptr))) (Instr 'movq (list (Var x) (Reg 'r11))) (Instr 'movq (list (Imm tag) (Deref 'r11 0)))))]
       [(Collect bytes) (list (Instr 'movq (list (Reg 'r15) (Reg 'rdi))) (Instr 'movq (list (Imm bytes) (Reg 'rsi))) (Callq 'collect 2))]
       [(GlobalValue tag) (list (Instr 'movq (list (Global tag) (Var x))))])]))


(define (slct-tail e name)
  (match e
    [(Seq s t) (append (slct-stmt s) (slct-tail t name))]
    [(Goto label) (list (Jmp label))]
    [(IfStmt (Prim 'eq? (list exp1 exp2)) (Goto l1) (Goto l2))
     (list (Instr 'cmpq (list (slct-atom exp1) (slct-atom exp2))) (JmpIf 'e l1) (Jmp l2))]
    [(IfStmt (Prim '< (list exp1 exp2)) (Goto l1) (Goto l2))
     (list (Instr 'cmpq (list (slct-atom exp2) (slct-atom exp1))) (JmpIf 'l l1) (Jmp l2))]
    [(TailCall f es) (append (map (lambda (atm reg) (Instr 'movq (list (slct-atom atm) (Reg reg)))) es (slice arg-regs 0 (length es)))
                             (list (TailJmp (slct-atom f) (length es))))]
    [(Return (HasType r t))
     (match r
       [(Int n) (list (Instr 'movq (list (Imm n) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Var y) (list (Instr 'movq (list (Var y) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Prim 'read es) (list (Callq 'read_int 0)  (Jmp (symb-append name 'conclusion)))]
       [(Prim '- (list (HasType y t))) (list
                                        (Instr 'movq (list (slct-atom y) (Reg 'rax)))
                                        (Instr 'negq (list (Reg 'rax)))
                                        (Jmp (symb-append name 'conclusion)))]
       [(Prim '+ (list (HasType y t1) (HasType v t2))) (list
                                                        (Instr 'movq (list (slct-atom y) (Reg 'rax)))
                                                        (Instr 'addq (list (slct-atom v) (Reg 'rax)))
                                                        (Jmp (symb-append name 'conclusion)))]
       [(Prim 'vector-ref (list (HasType vect t1) (HasType (Int n) t2))) (list (Instr 'movq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 (* 8 (add1 n))) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Prim 'vector-ref (list (HasType vect t1) (HasType i t2))) #:when(type-is-vectorof? t1) (list (Instr 'movq (list (slct-atom i) (Reg 'r11))) (Instr 'addq (list (Imm 1) (Reg 'r11))) (Instr 'imulq (list (Imm 8) (Reg 'r11))) (Instr 'addq (list (slct-atom vect) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 0) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Exit) (list (Instr 'movq (list (Imm -1) (Reg 'rdi))) (Callq 'exit 1))]
       [(Prim 'procedure-arity (list (HasType clos t))) (list (Instr 'movq (list (slct-atom exp) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 0) (Reg 'r11))) (Instr 'sarq (list (Imm 57) (Reg 'r11))) (Instr 'movq (list (Reg 'r11) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Prim 'vector-length (list (HasType exp t))) (list (Instr 'movq (list (slct-atom exp) (Reg 'r11))) (Instr 'movq (list (Deref 'r11 0) (Reg 'r11))) (Instr 'andq (list (Imm 126) (Reg 'r11))) (Instr 'sarq (list (Imm 1) (Reg 'r11))) (Instr 'movq (list (Reg 'r11) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Prim 'make-any (list (HasType e t) (HasType (Int tag) int)))#:when(not (or (eq? tag 2) (eq? tag 3))) (list (Instr 'movq (list (slct-atom e) (Reg 'rax))) (Instr 'salq (list (Imm 3) (Reg 'rax))) (Instr 'orq (list (Imm tag) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Prim 'make-any (list (HasType e t) (HasType (Int tag) int))) (list (Instr 'movq (list (slct-atom e) (Reg 'rax))) (Instr 'andq (list (Imm 7) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Prim 'tag-of-any (list (HasType e t))) (list (Instr 'movq (list (slct-atom e) (Reg 'rax))) (Instr 'andq (list (Imm 7) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(ValueOf (HasType exp t) type) #:when (or (type-is-vector? type) (type-is-function? type)) (list (Instr 'movq (Imm -8) (Reg 'rax)) (Instr 'andq (list (slct-atom exp) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(ValueOf (HasType exp t) type) (list (Instr 'movq (list (slct-atom exp) (Reg 'rax))) (Instr 'sarq (list (Imm 3) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))]
       [(Exit) (list (Instr 'movq (list (Imm -1) (Reg 'rdi))) (Callq 'exit 1))]
       [atm (list (Instr 'movq (list (slct-atom atm) (Reg 'rax))) (Jmp (symb-append name 'conclusion)))])]))



(define (select-def def)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info blocks)
     (Def name '() rt (cons `(num-params . ,(length xs)) info)
          (cons `(,(car (car blocks)) . ,(Block '() (append (map (lambda (var reg) (Instr 'movq (list (Reg reg) (Var var)))) xs (slice arg-regs 0 (length xs))) (slct-tail (cdr (car blocks)) name))))
                (append (map (lambda (x) `(,(car x) . ,(Block '() (slct-tail (cdr x) name)))) (cdr blocks)))))]))

(define (select-instructions p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map select-def ds))]))

(define (written-to instr)
  (match instr
    [(Instr 'negq (list (Var x))) (set x)]
    [(Instr 'cmpq `(,arg ,(Var x))) (set)]
    [(Instr i `(,arg ,(Var x))) (set x)]
    [(Instr i `(,arg ,(Reg x))) (set x)]
    [x (set)]))

(define (read-from instr)
  (match instr
    [(Instr 'negq (list (Var x))) (set x)]
    [(Instr 'addq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'addq `(,arg ,(Var x))) (set x)]
    [(Instr 'imulq `(,arg ,(Reg r))) (set r)]
    [(Instr 'imulq `(,arg ,(Var x))) (set x)]
    [(Instr 'salq `(,arg ,(Reg r))) (set r)]
    [(Instr 'salq `(,arg ,(Var x))) (set x)]
    [(Instr 'sarq `(,arg ,(Reg r))) (set r)]
    [(Instr 'sarq `(,arg ,(Var x))) (set x)]
    [(Instr 'cmpq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'cmpq `(,arg ,(Var x))) (set x)]
    [(Instr 'xorq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'orq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'andq `(,(Var x) ,(Var y))) (set x y)]
    [(Instr 'xorq `(,arg ,(Var x))) (set x)]
    [(Instr 'orq `(,arg ,(Var x))) (set x)]
    [(Instr 'andq `(,arg ,(Var x))) (set x)]
    [(IndirectCallq (Var x) arity) (set x)]
    [(TailJmp (Var x) arity) (set x)]
    [(Instr i `(,(Var x) ,arg)) (set x)]
    [(Instr i `(,(Reg r) ,arg)) (set r)]
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
      

(define (uncover-live-def def)
  (match def
    [(Def name (and p:t* (list `[,xs : ,ps] ...)) rt info blocks)
     (let ([g (CFG->graph (CFG blocks) name)])
       (let ([ordering (tsort (transpose g))])
         (Def name '() rt info (do-lives blocks ordering g '()))))]))

(define (uncover-live p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map uncover-live-def ds))]))

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

(define reg-colors
  '((rcx . 0) (rdx . 1) (rsi . 2) (rdi . 3) (r8 . 4) (r9 . 5) (r10 . 6) (r11 . 7)
              (rbx . 8) (r12 . 9) (r13 . 10) (r14 . 11)))

(define caller-registers '(rdx rcx rsi rdi r8 r9 r10 r11)) ;Excludes rax since it won't be in the interference graph
(define callee-registers '(r12 r13 r14 rbx rbp))
(define instrs-with-writes '(addq movq xorq movzbq leaq))

(define last-reg (sub1 (length reg-colors)))

(define (add-from-instr graph instr live-after types)
  (match instr
    [(Callq 'collect arity) (for ([x live-after]) (if (type-is-vector? (match-alist (Var x) types)) (for ([y (append caller-registers callee-registers)]) (add-edge! graph x y)) (for ([y caller-registers]) (add-edge! graph x y))))]
    [(IndirectCallq arg arity) (for ([x live-after]) (if (type-is-vector? (match-alist (Var x) types)) (for ([y (append caller-registers callee-registers)]) (add-edge! graph x y)) (for ([y caller-registers]) (add-edge! graph x y))))]
    [(Callq label arity) (for ([x live-after]) (for ([y caller-registers]) (add-edge! graph x y)))]
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


(define (add-block-to-graph graph instrs lives locals)
  (cond [(empty? instrs) graph]
        [else (begin (add-from-instr (add-block-to-graph graph (cdr instrs) (cdr lives) locals) (car instrs) (car lives) locals) graph)]))

(define (graph-from-blist B-list locals)
  (cond [(empty? B-list) (begin
                           (define g (unweighted-graph/undirected '()))
                           (for ([x (cdr all-registers)]) (add-vertex! g x))
                           (for ([x locals]) (match x [`(,(Var y) . ,type) (add-vertex! g y)]))
                           g)]
        [else (match (car B-list)
                [`(,label . ,(Block info instrs)) (add-block-to-graph (graph-from-blist (cdr B-list) locals) instrs (cdr (match-alist 'live-afters info)) locals)])]))
                                                                             

(define (build-from-def def)
  (match def
    [(Def name params rt info blocks)
     (let [(igraph (graph-from-blist blocks (match-alist 'locals info)))]
       (Def name '() rt (cons `(interference-graph . ,igraph) info) blocks))]))
  
(define (build-interference p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map build-from-def ds))]))

(define (extract-interference p)
  (match p
    [(Program info (CFG B-list))
     (match-alist 'interference-graph info)]))
    

(define (in-alist alist key)
  (cond [(empty? alist) #f]
        [(or (equal? key (car (car alist))) (in-alist (cdr alist) key))]))

;Add register colors to the registers already in the graph
(define (preprocess-graph g)
  (begin (for ([x (get-vertices g)] #:when (match-alist x reg-colors)) (rename-vertex! g x `(,x . ,(match-alist x reg-colors))))
         g))

(define (smallest-color ls n locals type)
  (if (<= n last-reg)
      (if (false? (rev-match-alist n ls)) n (smallest-color ls (add1 n) locals type))
      (if (type-is-vector? type) ;Assigns root-stack variables the same colors as regular stack vars
          (if (andmap (lambda (var) (not (type-is-vector? (match-alist var locals)))) (rev-match-alist-all n ls))
              n
              (smallest-color ls (add1 n) locals type))
          (if (andmap (lambda (var) (type-is-vector? (match-alist var locals))) (rev-match-alist-all n ls))
              n
              (smallest-color ls (add1 n) locals type)))))

(define (color-graph-accum g locals accum)
  (let [(vars (filter (lambda (x) (not (pair? x))) (get-vertices g)))]
    (cond [(empty? vars) accum] ;no colors needed everything is already colored
          [else (let [(most-constrained (car (sort vars #:key (lambda (v) (length (filter pair? (get-neighbors g v)))) >)))]
                  (let [(used-colors (filter pair? (get-neighbors g most-constrained)))]
                    (let [(color (smallest-color used-colors 0 locals (match-alist most-constrained locals)))]
                      (begin (rename-vertex! g most-constrained `(,most-constrained . ,color))
                             (color-graph-accum g locals (cons `(,most-constrained . ,color) accum))))))])))
                    

(define (color-graph g locals)
  (color-graph-accum g locals '()))

(define (round-stack-to-16 n)
  (if (zero? n) 16 (if (zero? (modulo n 16)) n (+ n 8))))

(define (compute-stack-size homes reg)
  (cond [(empty? homes) 0]
        [else (match (car homes)
                [`(,var . ,(Deref r loc)) #:when(eq? reg r) (max (* -1 loc) (compute-stack-size (cdr homes) reg))]
                [x (compute-stack-size (cdr homes) reg)])]))


(define (get-preferred-instrs inst)
  (match inst
    [(Instr 'movq `(,(Var z) ,(Reg r))) (let ([color (match-alist r reg-colors)]) (if color `(,z . ,color) '()))]
    [(Instr 'movq `(,(Reg r) ,(Var z))) (let ([color (match-alist r reg-colors)]) (if color `(,z . ,color) '()))]
    [(Instr 'movzbq `(,(Var z) ,(Reg r))) (let ([color (match-alist r reg-colors)]) (if color `(,z . ,color) '()))]
    [(Instr 'movzbq `(,(Reg r) ,(Var z))) (let ([color (match-alist r reg-colors)]) (if color `(,z . ,color) '()))]
    [x '()]))

(define (get-preferred-blocks block)
  (match block
    [`(,label . ,(Block info instrs)) (map get-preferred-instrs instrs)]))

(define (combine-preferences ls)
  (cond [(empty? ls) '()]
        [(let* ([ref (combine-preferences (cdr ls))] [other-ls (match-alist (car (car ls)) ref)] [others (if other-ls other-ls '())])
           (cons `(,(car (car ls)) . ,(cons (cdr (car ls)) others)) ref))]))
  
(define (get-preferred-regs blocks)
  (combine-preferences (filter (lambda (x) (not (empty? x))) (append-map get-preferred-blocks blocks))))

(define (allocate-def def)
  (match def
    [(Def name params rt info blocks)
     (let [(homes (generate-assignments (match-alist 'locals info) (color-graph (preprocess-graph (match-alist 'interference-graph info)) (match-alist 'locals info))))]
       (Def name params rt `((stack-size . ,(compute-stack-size homes 'rbp)) (used-regs . ,(filter Reg? (map cdr homes))) (root-stack-size . ,(compute-stack-size homes 'r15)) ,@info)
            (map (lambda (x) (match x
                               [`(,label . ,(Block info instrs)) `(,label . ,(Block info (assign-block instrs homes)))])) blocks)))]))

(define (allocate-registers p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map allocate-def ds))]))

(define (assign-nat n type)
  (cond [(<= n last-reg) (Reg (rev-match-alist n reg-colors))]
        [(type-is-vector? type) (Deref 'r15 (* 8 (add1 (- n last-reg))))]
        [else (Deref 'rbp (* (add1 (- n last-reg)) (- 8)))]
        ))

(define (generate-assignments locals colors)
  (cond [(empty? locals) '()]
        [else (match (car locals)
                [`(,(Var v) . ,type) (cons `(,v . ,(assign-nat (match-alist v colors) type)) (generate-assignments (cdr locals) colors))])]))

(define (assign-instr inst homes)
  (match inst
    [(Var v) (match-alist v homes)]
    [(Instr inst args) (Instr inst (map (lambda (i) (assign-instr i homes)) args))]
    [(TailJmp arg arity) (TailJmp (assign-instr arg homes) arity)]
    [(IndirectCallq arg arity) (IndirectCallq (assign-instr arg homes) arity)]
    [x x]))

(define (assign-block instrs homes)
  (map (lambda (i) (assign-instr i homes)) instrs))

;; assign-homes : pseudo-x86 -> pseudo-x86 Deprecated in favor of allocate-registers
(define (assign-homes p)
  (match p
    [(Program info (CFG B-list))
     (let [(homes (generate-assignments (match-alist 'locals info) -8))]
       (Program `((stack-size . ,(- (let [(size (last-value homes))] (if (false? size) 0 (cdr size))))) ,@info) (CFG (map (lambda (x) (match x
                                                                                                                                        [`(,label . ,(Block info instrs)) `(,label . ,(Block info (assign-block instrs homes)))])) B-list))))]))

(define (do-patch  instruction)
  (match instruction
    [(Instr 'cmpq (list (Imm n1) (Imm n2)))
     (list (Instr 'movq (list (Imm n2) (Reg 'rax)))
           (Instr 'cmpq (list (Imm n1) (Reg 'rax))))]
    [(Instr 'cmpq (list (Reg r) (Imm n))) (list (Instr 'cmpq (list (Imm n) (Reg r))))]
    [(Instr 'cmpq (list (Deref r loc) (Imm n))) (list (Instr 'cmpq (list (Imm n) (Deref r loc))))]
    [(Instr 'movzbq (list x y)) #:when (not (Reg? y))
                                (list (Instr 'movzbq (list x (Reg 'rax)))
                                      (Instr 'movq (list (Reg 'rax) y)))]
    [(Instr 'movq (list d1 d2)) #:when (equal? d1 d2) '()]
    [(Instr 'leaq (list arg dest)) #:when (not (Reg? dest))
                                   (list (Instr 'leaq (list arg (Reg 'rax)))
                                         (Instr 'movq (list (Reg 'rax) dest)))]
    [(TailJmp arg arity) (list (Instr 'movq (list arg (Reg 'rax)))
                         (TailJmp (Reg 'rax) arity))]
    [(Instr e (list (Deref  reg off) (Deref reg2 off2)))
     (list (Instr 'movq (list (Deref reg off) (Reg 'rax)))
           (Instr e (list (Reg 'rax) (Deref reg2 off2))))]
    [else (list instruction)]))

(define (patch e)
  (match e
    [(Block info exp) (Block '() (append-map do-patch exp))]
    ))

(define (patch-def def)
  (match def
    [(Def name params rt info blocks)
     (Def name params rt info (map (lambda (x) `(,(car x) . ,(patch (cdr x)))) blocks))]))

(define (patch-instructions p)
  (match p
    [(ProgramDefs info ds)
     (ProgramDefs info (map patch-def ds))]))
       
(define heap-size 1024)
(define root-stack-size 16384)

(define (initialize-garbage-collector root-spills)
  `(    ,(Instr 'movq (list (Imm root-stack-size) (Reg 'rdi)))
        ,(Instr 'movq (list (Imm heap-size) (Reg 'rsi)))
        ,(Callq 'initialize 2)
        ,(Instr 'movq (list (Global 'rootstack_begin) (Reg 'r15)))
        ))

(define (get-extra-pushes used-regs)
  (filter (lambda (reg)
            (match reg
              [(Reg x) (index-of callee-registers x)]
              [x false]))
          used-regs))

;; generates an x86 representation of the main clause
(define (make-main stack-size used-regs root-spills name)
  (let ([extra-pushes (get-extra-pushes used-regs)])
    (Block '() (append (list (Instr 'pushq (list (Reg 'rbp))) (Instr 'movq (list (Reg 'rsp) (Reg 'rbp))))
                       (map (lambda (x) (Instr 'pushq (list x))) extra-pushes)
                       (list (Instr 'subq (list (Imm (let ([push-bytes (* 8 (length extra-pushes))]) (- (round-stack-to-16 (+ push-bytes stack-size)) push-bytes))) (Reg 'rsp))))
                       (if (eq? name 'main) (initialize-garbage-collector root-spills) '())
                       (map (lambda (n) (Instr 'movq (list (Imm 0) (Deref 'r15 n)))) (all-ints 0 (add1 root-spills) 8))
                       (list (Instr 'addq (list (Imm root-spills) (Reg 'r15))))
                       (list  (Jmp (symb-append name 'start)))))))

;; generates an x86 representation of the conclusion

(define (make-conclusion stack-size used-regs root-spills)
  (let ([extra-pops (get-extra-pushes used-regs)])
    (Block '() (pop-frame stack-size used-regs root-spills (Retq)))))

(define (stringify-ref ref)
  (match ref
    [(Imm x) (format "$~a" x)]
    [(Reg x) (format "%~a" x)]
    [(ByteReg reg) (format "%~a" reg)]
    [(Deref reg loc) (format "~a(%~a)" loc reg)]
    [(FunRef lbl) (format "~a(%rip)" (make-legal-label lbl))]
    [(Global var) (format "~a(%rip)" (make-legal-label var))]))

(define (stringify-instr instr)
  (match instr
    [(Callq label arity) (format "\tcallq ~a\n" (make-legal-label label))]
    [(Jmp label) (format "\tjmp ~a\n" (make-legal-label label))]
    [(JmpIf cc label) (format "\t j~a ~a\n" cc (make-legal-label label))]
    [(Instr 'set (list cc arg)) (format "\t set~a ~a\n" cc (stringify-ref arg))]
    [(Instr name regs) (format "\t~a ~a\n" name (string-join (map stringify-ref regs) ", "))]
    [(Retq) (format "\tretq \n")]
    [(IndirectCallq arg arity) (format "\tcallq *~a\n" (stringify-ref arg))]
    [(TailJmp arg arity) (format "\tjmp *~a\n" (stringify-ref arg))]
    [x (format "\t~a" x)]))


;;Turns a block and its label into a string
(define (stringify-block label block)
  (format "~a:~n~a" (make-legal-label label) (match block
                                               ([Block info instrs] (foldr (lambda (x rs) (string-append (stringify-instr x) rs)) "" instrs)))))

;;Converts an alist of labeled x86 blocks to their string representation
(define (x86-to-string blocks)
  (foldr (lambda (x rs) (string-append (stringify-block (car x) (cdr x)) rs)) "" blocks))

(define (pop-frame stack-size used-regs root-spills tail)
  (let ([extra-pops (get-extra-pushes used-regs)])
    (append (list (Instr 'subq (list (Imm root-spills) (Reg 'r15)))) (list  (Instr 'addq (list (Imm (let ([push-bytes (* 8 (length extra-pops))]) (- (round-stack-to-16 (+ push-bytes stack-size)) push-bytes))) (Reg 'rsp)))) (append (map (lambda (x) (Instr 'popq (list x))) extra-pops) (list (Instr 'popq (list (Reg 'rbp))) tail)))))

(define (implement-tail-call block stack-size used-regs root-spills)
  (match block
    [`(,lbl . ,(Block info instrs)) (if (TailJmp? (last-value instrs))
                                        `(,lbl . ,(Block info (append (slice instrs 0 (sub1 (length instrs)))
                                                                      (pop-frame stack-size used-regs root-spills (last-value instrs)))))
                                        `(,lbl . ,(Block info instrs)))]))

(define (stringify-def def)
  (match def
    [(Def name params rt info blocks)
     (let [(stack-size (match-alist 'stack-size info))]
       (let [(used-regs (set->list (list->set (match-alist 'used-regs info))))]
         (let [(root-spills (match-alist 'root-stack-size info))]
           (let [(main (make-main stack-size used-regs root-spills name))]
             (let [(conclusion (make-conclusion stack-size used-regs root-spills))]
               (format ".globl ~a~n.align 16~n~a" (make-legal-label name)  (x86-to-string (append (map (lambda (b) (implement-tail-call b stack-size used-regs root-spills)) blocks) `((,name . ,main) (,(symb-append name 'conclusion) . ,conclusion)))))
               )))))]))

;; print-x86 : x86 -> string
(define (print-x86 p)
  (match p
    [(ProgramDefs info ds)
     (foldr string-append "" (map stringify-def ds))]
    [(Program info (CFG B-list)) (let [(stack-size (match-alist 'stack-size info))]
                                   (let [(used-regs (set->list (list->set (match-alist 'used-regs info))))]
                                     (let [(root-spills (match-alist 'root-stack-size info))]
                                       (let [(main (make-main stack-size used-regs root-spills))]
                                         (let [(conclusion (make-conclusion stack-size used-regs root-spills))]
                                           (x86-to-string (append B-list `((main . ,main) (conclusion . ,conclusion))))
                                           )))))]))

;(define test-compile (compose print-x86 patch-instructions allocate-registers build-interference uncover-live select-instructions uncover-locals explicate-control remove-complex-opera* expose-allocation limit-functions convert-to-closure reveal-casts check-bounds cast-insert reveal-functions uniquify shrink parse-program (lambda (x) `(program () ,@x))))
(define test-compile (compose check-bounds cast-insert reveal-functions uniquify shrink parse-program (lambda (x) `(program () ,@x)))) 
(define test-program '((define (id x) x)

(id 42)))