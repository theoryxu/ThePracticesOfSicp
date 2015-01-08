;递归计算过程
(define (f-1 n)
  (if (< n 3)
      n
      (+ (f-1 (- n 1)) (* 2 (f-1 (- n 2))) (* 3 (f-1 (- n 3))))))

;迭代计算过程
(define (f-iter a b c n)
  (if (< n 3)
      c
      (f-iter b c (+ (* 3 a) (* 2 b) c) (- n 1))))

(define (f-2 n)
  (if (< n 3)
      n
      (f-iter 0 1 2 n)))

(f-1 2)
(f-1 3)
(f-1 4)

(f-2 2)
(f-2 3)
(f-1 4)
