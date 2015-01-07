(define (Ackermann x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (Ackermann (- x 1)
                         (Ackermann x (- y 1))))))
(Ackermann 1 10)
(Ackermann 2 4)
(Ackermann 3 3)

;f = 2n
(define (f n) (Ackermann 0 n))

;g = 2^n
(define (g n) (Ackermann 1 n))

;h = 2^(2^(2^(....)))
(define (h n) (Ackermann 2 n))

