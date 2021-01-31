; File: SchemeRecursion2.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/10/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 3 Q 2

(define (addatposition val pos aList)
  (cond
    [(null? aList)
      (list val)
    ]
    [(= pos 0)
      ; cons pos
      (cons val aList)
    ]
    [else
      ;car + addatposition cdr
      (cons (car aList) (addatposition val (- pos 1) (cdr aList) ) )
    ]
  )
)

(define (main)
  (display "(addatposition 2 1 '(5 6 7)): ")
  (display (addatposition 2 1 '(5 6 7)))
  (newline)
  (display "(addatposition 5 5 '(1 2 5 6 5 3)): ")
  (display (addatposition 5 5 '(1 2 5 6 5 3)))
  (newline)
  (display "(addatposition 3 0 '(1)): ")
  (display (addatposition 3 0 '(1)))
  (newline)
  (display "(addatposition 3 0 '()): ")
  (display (addatposition 3 0 '()))
)

(main)
