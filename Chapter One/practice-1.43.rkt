(define (square x)
  (* x x))

(define (repeated f n)
  (define index 1)
  (if (= index n)
      (lambda (x) (f x))
      (repeated (lambda (y) (f (f y))) (- n 1))))

((repeated square 2) 5)