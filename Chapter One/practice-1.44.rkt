(define dx 0.00000001)

(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(cos 1.0)
((smooth cos) 1.0)