(define (intersection lst1 lst2)
  (cond
    ((or (null? lst1) (null? lst2)) '())
    ((exist? (car lst1) lst2) (cons (car lst1) (intersection (cdr lst1) lst2)))
    (else (intersection (cdr lst1) lst2))
   )
)

(define (exist? x lst)
  (cond
    ((null? lst) #f)
    ((eq? x (car lst)) #t)
    (else (exist? x (cdr lst)))
  )
)


(define (main)
  (display (intersection '(1 2 3 4) '(4 -1 2 5)))
  (newline)
  (display (intersection '(5 6 7 8) '(1 2 3)))
)

(main)