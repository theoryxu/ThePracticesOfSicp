(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;牛顿法求平方根
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(sqrt-iter 1 2)

;重新定义if
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (new-sqrt-iter (improve guess x) x)))
(new-sqrt-iter 1 2) ;因为new-if是常规过程，会先计算所有的参数后再进行判断。这就导致递归部分一直运行无法停止。

