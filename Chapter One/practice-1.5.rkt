(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 p)

;应用序：0

;正则序：程序一直在跑无法停止，陷入死循环