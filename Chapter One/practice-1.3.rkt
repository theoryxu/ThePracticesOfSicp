(define (new-add a b c)
  (cond ((and (> a c) (> b c)) (+ a b))
        ((and (> b a) (> c a)) (+ b c))
        ((and (> a b) (> c b)) (+ a c))))

(new-add 1 2 3)
(new-add 9 8 7)