#lang racket
(println "#4")
(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (enumerate-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
                      (enumerate-tree (cdr tree))))))
(define spisok (list 1 (list (list 2 3) 4) 5 6))
(enumerate-tree spisok)

(define (add spisok)
 (define (count spisok sum)
 (if(null? spisok)
 sum
 (count(cdr spisok) (+ sum (car spisok)))))
 (count (enumerate-tree spisok) 0))
(add spisok)
