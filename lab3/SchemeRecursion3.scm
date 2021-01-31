; File: SchemeRecursion3.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/10/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 3 Q 3

(define (union aList1 aList2)
  (cond
    [(or (null? aList1) (null? aList2))
      (append aList1 aList2)
    ]
    [(member (car aList2) aList1 )
      (union aList1 (cdr aList2) )
    ]
    [else
      (union (cons (car aList2) aList1) (cdr aList2) )
    ]
  )
)

(define (member atm lis)
  (cond
    [(null? lis)
      #f
    ]
    [(eq? atm (car lis))
      #t
    ]
    [else
      (member atm (cdr lis))
    ]
  )
)

(define (main)
  (display "(union '(1 2 3 4) '(4 -1 2 5) ): " )
  (display (union '(1 2 3 4) '(4 -1 2 5) ) )
  (newline)
  (display "(union '(7 11 13 2.1) '(7 11 13 23 2.2): " )
  (display (union '(7 11 13 2.1) '(7 11 13 23 2.2) ) )
  (newline)
  (display "(union '(1 2 3 4) '() ): " )
  (display (union '(1 2 3 4) '() ) )
  (newline)
  (display "(union '() '(1 2 3 4) ): " )
  (display (union '() '(1 2 3 4) ) )
  (newline)
  (display "(union '() '() ): " )
  (display (union '() '() ) )
)

(main)
