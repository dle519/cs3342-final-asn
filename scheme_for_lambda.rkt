#lang racket

(define f(lambda (z)(list 'f z)))

(define x(lambda (z)(list 'x z)))

((lambda (f x) '((f (f x))))(lambda (f x) '((f (f x))))'(f x))