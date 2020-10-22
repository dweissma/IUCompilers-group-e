#! /usr/bin/env racket
#lang racket

(require "utilities.rkt")
(require "interp.rkt")
(require "interp-R3.rkt")
(require "compiler.rkt")
;; (debug-level 1)
;; (AST-output-syntax 'concrete-syntax)

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"

(define interp-R-prime
  (let ([interp (new interp-R3-class)])
    (send interp interp-scheme '())))

(define r3-passes
  `( ("type check R3", type-check, interp-R3)
     ("shrink", shrink, interp-R3)
     ("uniquify" ,uniquify ,interp-R3)
     ("expose allocation", expose-allocation, interp-R-prime)
     ("remove complex opera*" ,remove-complex-opera* ,interp-R-prime)
     ("explicate control" ,explicate-control ,interp-C2)
     ("uncover locals" ,uncover-locals ,interp-C2)
     ("instruction selection" ,select-instructions ,R3-interp-x86)
     ("uncover live", uncover-live, R3-interp-x86)
     ("build interference", build-interference, R3-interp-x86)
     ("allocate registers", allocate-registers, R3-interp-x86)
     ("patch instructions" ,patch-instructions ,R3-interp-x86)
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

;(interp-tests "r1" #f r3-passes interp-R3 "r1" (tests-for "r1"))
;(compiler-tests "r1" #f r3-passes "r1" (tests-for "r1"))

;(interp-tests "r2" type-check r3-passes interp-R3 "r2" (tests-for "r2"))
;(compiler-tests "r2" type-check r3-passes "r2" (tests-for "r2"))

(interp-tests "r3" type-check r3-passes interp-R3 "r3" (tests-for "r3"))
(compiler-tests "r3" type-check r3-passes "r3" (tests-for "r3"))