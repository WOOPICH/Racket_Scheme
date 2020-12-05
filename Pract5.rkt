#lang racket
(define (bubble-up L)
    (if (null? (cdr L))   
        L    
        (if (< (car L) (cadr L))   
            (cons (car L) (bubble-up (cdr L)))   
            (cons (cadr L) (bubble-up (cons (car L) (cddr L)))))))

(define (bubble-sort-aux N L)    
    (cond ((= N 1) (bubble-up L))   
          (else (bubble-sort-aux (- N 1) (bubble-up L)))))
(define (bubbleH L) 
    (bubble-sort-aux (length L) L))

(bubbleH '(5 10 9 8 7))
(bubbleH '(5 10 9 8 7 1 3 4 11 23 12 12 3 41 1 2 3 11 52))