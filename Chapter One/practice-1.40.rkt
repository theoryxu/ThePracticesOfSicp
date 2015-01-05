(define dx 0.000000001)
(define tolerance 0.00000001)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) 
          (g x)) 
       dx)))

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (newton-transform g)
  (lambda (x)
    (- x 
       (/ (g x) 
          ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (new-sqrt x)
  (newtons-method (lambda (y) (- (square y) x)) 
                  1.0))

(define (square x)
  (* x x))

(define (cubic a b c)
  (lambda (x)
    (+ (* x x x) 
       (* a (* x x)) 
       (* b x) 
       c)))
(new-sqrt 2)

(newtons-method (cubic 0 0 0) 1.0)
(fixed-point (cubic 0 0 0) 1.0)


(fixed-point cos 1.0)
(newtons-method cos 1.0)
((deriv (lambda (x) (* x x x))) 5)