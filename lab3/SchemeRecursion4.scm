; File: SchemeRecursion4.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/10/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 3 Q 4


(define (min-list-value aList)
  (cond
    [(null? aList)
      aList
    ]
    [(= (length aList) 1)
      (car aList)
    ]
    [else
      ; smallest of 0 and 1 + cddr
      (if (< (car aList) (cadr aList))
        ; 0 + cddr -- true
        (min-list-value (cons (car aList) (cddr aList) ) )
        ; 1 + cddr -- false
        (min-list-value (cons (cadr aList) (cddr aList) ) )
      )
    ]
  )
)

(define (max-list-value aList)
  (cond
    [(null? aList)
      aList
    ]
    [(= (length aList) 1)
      (car aList)
    ]
    [else
      ; largest of 0 and 1 + cddr
      (if (> (car aList) (cadr aList))
        ; 0 + cddr -- true
        (max-list-value (cons (car aList) (cddr aList) ) )
        ; 1 + cddr -- false
        (max-list-value (cons (cadr aList) (cddr aList) ) )
      )
    ]
  )
)



(define (main)
  (display "'(4 5 6 7 2)\nmin: ")
  (display (min-list-value '(4 5 6 7 2)))
  (newline)
  (display "max: ")
  (display (max-list-value '(4 5 6 7 2)))
  (newline)

  (display "'(1 4 5 6 2 10)\nmin: ")
  (display (min-list-value '(1 4 5 6 2 10)))
  (newline)
  (display "max: ")
  (display (max-list-value '(1 4 5 6 2 10)))
  (newline)

  (display "'()\nmin: ")
  (display (min-list-value '()))
  (newline)
  (display "max: ")
  (display (max-list-value '()))
  (newline)
)

(main)
