(define (remove n L)
  (cond
    ((null? L) '())
    ((list? (car L)) (cons (remove n (car L)) (remove n(cdr L)))
)   ((eq? n (car L)) (remove n (cdr L)))
    (else (cons (car L) (remove n (cdr L))))
   )
)

(display (remove 1 (cons '(1 1 (1 1 (1))) '(1 2 (1 3)))))