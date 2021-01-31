; File: SchemeRecursion1.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/10/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 3 Q 1


(define (half-everything aList)
  (cond
    [(null? aList)
      aList
    ]
    [else
      (cons (/ (car aList) 2.0) (half-everything (cdr aList) ) )
    ]
  )
)

(define (main)
  (display "(half-everything '(8 10 20 5)): ")
  (display (half-everything '(8 10 20 5)))
  (newline)
  (display "(half-everything '()): ")
  (display (half-everything '()))
  (newline)
)

(main)
