(define (square x)
  (* x x))

(define (inc x)
  (+ x 1))

(define (new-compose f g)
  (lambda (x) (f (g x))))

((new-compose square inc) 6)