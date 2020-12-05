#lang racket
(println "#5")
(define (square x) (* x x))
(define (Coord p1 p2)
  (display "Вычисление расстояния между точками ")
  (display p1)
  (display p2)
  (newline)
  (display (sqrt (+ (square (- (cdr p2)(cdr p1)))(square(- (car p2)(car p1))))))
  )

(println(Coord (cons 1 1)(cons 0 0)))
(println(Coord (cons 1 1)(cons 5 6)))
(println(Coord (cons 0 0)(cons 0 1)))

(println "#7")
(println "Найти сумму первого, третьего и седьмого элементов списка, если указанные элементы – числа, иначе – возвратить последний элемент списка")
(define (Sum_or_last list)
  (cond
    [(and (number? (list-ref list 0))
          (number? (list-ref list 2))
          (number? (list-ref list 6))
     (format "~a Сумма"(+ (list-ref list 0)(list-ref list 2)(list-ref list 6))))]
    [(format "~a Последний элемент списка" (list-ref list 6))])
  )

(println(Sum_or_last (list 1 2 3 4 5 6 7)))
(println(Sum_or_last (list 1 2 "d" 4 5 6 7)))
(println(Sum_or_last (list 3 0 3 0 3 0 "x")))

(println "#13")
(println "Есть три числа. Построить список из кубов этих чисел, если все три числа – нечетные, возвратить сумму чисел – иначе")
(define (cube x) (* x x x))
(define (Cube_or_sum x y z)
  (cond
    [(and (odd? x)(odd? y)(odd? z))
     (format "~a Список кубов чисел" (list (cube x) (cube y) (cube z)))]
    [(format "~a Сумма чисел" (+ x y z))]
    )
  )

(println(Cube_or_sum 1 2 3))
(println(Cube_or_sum 31 35 81))
(println(Cube_or_sum 3 7 9))



