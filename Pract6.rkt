#lang racket
(println "Вычисление площади кольца")
(define (f x y) (* 3.14 (- (* x x)(* y y))))

(f 14 3)
(f 16 2)
(f 15 14)