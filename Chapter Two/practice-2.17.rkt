(define (my-last-pair items)
  (if (null? (cdr items))
      (car items)
      (my-last-pair (cdr items))))

(my-last-pair (list 23 72 149 34))