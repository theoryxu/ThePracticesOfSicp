(define (good-enough? guess previous-guess)
  (< (abs (/ (- previous-guess guess) guess)) 0.0001))

(define (approach x guess)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

;牛顿法求立方根
(define (cube-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (cube-iter (approach x guess) guess x)))

(cube-iter 1 0 27)