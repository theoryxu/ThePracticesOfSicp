(define (pascal-triangle row n)
  (if (OR (< row 3) (= 1 n) (= row n))
      1
      (+ (pascal-triangle (- row 1) (- n 1))
         (pascal-triangle (- row 1) n))))

(pascal-triangle 5 1)
(pascal-triangle 5 2)
(pascal-triangle 5 3)
(pascal-triangle 5 4)
(pascal-triangle 5 5)
