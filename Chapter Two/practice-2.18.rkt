(define (new-reverse items)
  (if (null? (cdr items))
      items
      (append (new-reverse (cdr items)) (list (car items)))))


(new-reverse (list 1 2 3 4 5))