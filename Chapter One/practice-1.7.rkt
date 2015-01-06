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
(sqrt-iter 1 0.000016)

;改进牛顿法求平方根
(define (new-good-enough? guess previous-guess)
  (< (abs (/ (- previous-guess guess) guess)) 0.0001))

(define (new-sqrt-iter guess previous-guess x)
  (if (new-good-enough? guess previous-guess)
      guess
      (new-sqrt-iter (improve guess x) guess x)))

(new-sqrt-iter 1 0 0.000016)
