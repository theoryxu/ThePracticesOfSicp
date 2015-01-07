(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (add-1 a b)
  (if (= a 0)
      b
      (inc (add-1 (dec a) b))))

(define (add-2 a b)
  (if (= a 0)
      b
      (add-2 (dec a) (inc b))))

(add-1 4 5)
(add-2 4 5)
;add-1的计算过程,递归
;(add-1 4 5)
;(+ 1 (add-1 3 5))
;(+ 1 (+ 1 (add-1 2 5)))
;(+ 1 (+ 1 (+ 1 (add-1 1 5))))
;(+ 1 (+ 1 (+ 1 (+ 1 (add-1 0 5)))))
;(+ 1 (+ 1 (+ 1 (+ 1 5))))
;(+ 1 (+ 1 (+ 1 6)))
;(+ 1 (+ 1 7))
;(+ 1 8)
;(9)
;
;add-2的计算过程,迭代
;(add-2 4 5)
;(add-2 3 6)
;(add-2 2 7)
;(add-2 1 8)
;(add-2 0 9)
;(9)
;