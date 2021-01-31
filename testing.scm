(define (by10 x) ( + x 10))
(display (map by10 '(23 24 65 98)))

(define (average aList)
  (cond
    ((null? aList) 0)
    ((not (list? aList)) aList)
    (else (/ (apply + aList) (length aList)))
  )
)

(newline)
(display (average '(1 2 3)))

(define (countNegative aList)
(cond
((null? aList) 0)
((not (list? aList)) (if (< aList 0) 1 0))
(else (apply + (cons (countNegative (car aList))
(map countNegative (cdr aList)))))))

(newline)
(display (countNegative '(1 -2 3)))

(define (reverseList aList)
(cond
((null? aList) '())
((not (list? aList)) (list aList))
(else (append (reverseList (cdr aList)) (list (car aList))))))

(newline)
(display (reverseList '(1 -2 3)))
