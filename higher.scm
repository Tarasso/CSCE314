(load "sort.scm")
(load "apps.scm")
;(display (map pow2 '(1 2 3 4))) ;pow2 is not in Gambit
(display (map + '(1 2 3) '(4 5 6)))
(newline)
(display (map + '(1 2 3) '(4 5 6 7))) ;=> (5, 7, 9)//!7

(define (addTenPercent x)
  (* x 1.1)
)

(define (curve aList)
  (map (lambda (x) (* 1.1 x) ) aList)
)

(display (curve '(80 85 90)))
(newline)
(display (filter even? '(1 2 3 4 5 6)))
(newline)
(display (sort '(1 2 3 4 5) >))
(newline)
(display (sort '("yes" "no""test") string<?) )
(newline)
(display (sort '(#\x #\b #\a) char<?) )
