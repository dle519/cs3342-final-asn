#lang racket

(define quicksort (lambda (L)
(cond
  ((or (null? L) (null? (cdr L))) L)
  (else (letrec ((pivot (car L)) (others (cdr L)))
          (append (quicksort (filter (lambda (a) (< a pivot)) others))(list pivot)(quicksort (filter (lambda (b) (>= b pivot )) others))))))))


(quicksort '(5 3 7 2 1 6 4))