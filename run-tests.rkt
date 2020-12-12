#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")
(require "interp-R7.rkt")
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


(define r7-passes
  `( ("shrink", shrink, interp-R7-prog)
     ("uniquify" ,uniquify ,interp-R7-prog)
     ("reveal functions" ,reveal-functions ,interp-F3)
     ("cast insert" ,cast-insert ,interp-F3)
     ("check bounds" ,check-bounds ,interp-F3)
     ("reveal casts" ,reveal-casts ,interp-F3)
     ("convert closures" ,convert-to-closure ,interp-F3)
     ("limit functions" ,limit-functions ,interp-F3)
     ("expose allocation", expose-allocation, interp-F3)
     ("remove complex opera*" ,remove-complex-opera* ,interp-F3)
     ("explicate control" ,explicate-control ,interp-C5)
     ("uncover locals" ,uncover-locals ,interp-C5)
     ("instruction selection" ,select-instructions ,interp-pseudo-x86-3)
     ;("uncover live", uncover-live, interp-pseudo-x86-3)
     ;("build interference", build-interference,  interp-pseudo-x86-3)
     ;("allocate registers", allocate-registers,  interp-pseudo-x86-3)
     ;("patch instructions" ,patch-instructions , interp-pseudo-x86-3)
     ;("print x86" ,print-x86 #f)
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

(interp-tests "r7" #f r7-passes interp-R7 "r7" (tests-for "r7"))
(compiler-tests "r7" #f r7-passes "r7" (tests-for "r7"))
