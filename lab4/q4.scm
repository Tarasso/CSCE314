(define (cal f x)
  (map f x)
)

(define (alternate-first lst1)
  (cond
    ((null? lst1) '())
    ((= 1 (length lst1)) (list (car lst1)))
    (else (cons (car lst1) (alternate-first (cddr lst1))))
  )
)

(display (alternate-first '(1 2 3 4 5 6 7)))
(newline)
(display (alternate-first (cal sqrt '(1 2 3 4 9))))
(newline)
(display (alternate-first (cal (lambda (x) (+ x 5)) '(1 2 3 4 5))))