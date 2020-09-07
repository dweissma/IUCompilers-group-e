#lang racket
(require "utilities.rkt")

(define (slct-atom e)
    (match e
     [(Var x) (Var x)]
     [(Int x) (Imm x)]))
        
(define (slct-stmt tail)
  (match tail
    [(Assign (Var x) exp)
     (match exp
       [(Int n) (Instr 'movq (list (Imm n) (Var x)))]
       [(Var y) (Instr 'movq (list (Var y) (Var x)))]
       [(Prim 'read es) (list (Callq 'read_int) (Instr 'movq (list (Reg 'rax) (Var x))))]
       [(Prim '- (list y)) #:when (eq? (Var x) y) (Instr 'negq (list (Var x)))]
       [(Prim '- (list y)) (list (Instr 'movq (list (slct-atom y) (Var x))) (Instr 'negq (list (Var x))))]
       [(Prim '+ (list y v)) #:when (eq? (Var x) y) (Instr 'addq (list (slct-atom v) (Var x)))]
       [(Prim '+ (list y v)) #:when (eq? (Var x) v) (Instr 'addq (list (slct-atom y) (Var x)))]
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
     (Program info (CFG (map (lambda (x) `(,(car x) . (slct-tail (cdr x)))) B-list)))]))
       
       
                           
             
       
       

  