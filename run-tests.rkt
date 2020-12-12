#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")
(require "interp-R6.rkt")
(require "interp-R5.rkt")
(require "interp-R4.rkt")
(require "interp-R3.rkt")
(require "type-check-R6.rkt")
(require "compiler.rkt")
;(debug-level 1)
;; (AST-output-syntax 'concrete-syntax)

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"

(define interp-R-prime
  (let ([interp (new interp-R3-class)])
    (send interp interp-scheme '())))

(define interp-F2
  (lambda (p)
    ((send (new interp-R5-class)
           interp-F '()) p)))

(define r5-passes
  `( ("type check R6", type-check, interp-R6)
     ("shrink", shrink, interp-R6)
     ("uniquify" ,uniquify ,interp-R6)
     ("reveal functions" ,reveal-functions ,interp-F2)
     ("convert closures" ,convert-to-closure ,interp-F2)
     ("limit functions" ,limit-functions ,interp-F2)
     ("expose allocation", expose-allocation, interp-F2)
     ("remove complex opera*" ,remove-complex-opera* ,interp-F2)
     ("explicate control" ,explicate-control ,interp-C3)
     ("uncover locals" ,uncover-locals ,interp-C3)
     ("instruction selection" ,select-instructions ,interp-pseudo-x86-3)
     ("uncover live", uncover-live, interp-pseudo-x86-3)
     ("build interference", build-interference,  interp-pseudo-x86-3)
     ("allocate registers", allocate-registers,  interp-pseudo-x86-3)
     ("patch instructions" ,patch-instructions , interp-pseudo-x86-3)
     ("print x86" ,print-x86 #f)
     ))

(define all-tests
  (map (lambda (p) (car (string-split (path->string p) ".")))
       (filter (lambda (p)
                 (string=? (cadr (string-split (path->string p) ".")) "rkt"))
               (directory-list (build-path (current-directory) "tests")))))

(define (tests-for r)
  (map (lambda (p)
         (cadr (string-split p "_")))
       (filter
        (lambda (p)
          (string=? r (car (string-split p "_"))))
        all-tests)))

;Uncomment to run tests from earlier languages
;(interp-tests "r1" type-check-R5 r5-passes interp-R5 "r1" (tests-for "r1"))
;(compiler-tests "r1" type-check-R5 r5-passes "r1" (tests-for "r1"))

;(interp-tests "r2" type-check-R5 r5-passes interp-R5 "r2" (tests-for "r2"))
;(compiler-tests "r2" type-check-R5 r5-passes "r2" (tests-for "r2"))

;(interp-tests "r3" type-check-R5 r5-passes interp-R5 "r3" (tests-for "r3"))
;(compiler-tests "r3" type-check-R5 r5-passes "r3" (tests-for "r3"))

;(interp-tests "r4" type-check-R5 r5-passes interp-R5 "r4" (tests-for "r4"))
;(compiler-tests "r4" type-check-R5 r5-passes "r4" (tests-for "r4"))

;(interp-tests "r5" type-check-R5 r5-passes interp-R5 "r5" (tests-for "r5"))
;(compiler-tests "r5" type-check-R5 r5-passes "r5" (tests-for "r5"))

(interp-tests "r7" type-check-R6 r5-passes interp-R5 "r7" (tests-for "r7"))
(compiler-tests "r7" type-check-R6 r5-passes interp-R5 "r7" (tests-for "r7"))