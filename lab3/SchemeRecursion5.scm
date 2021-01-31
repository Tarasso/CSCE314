; File: SchemeRecursion5.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/10/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 3 Q 5

(define (middle-value aList)
  (cond
    [(null? aList)
      aList
    ]
    ;if there are 2 or less items, return '() aka only min and max values remaining
    [(< (length aList) 3)
      '()
    ]
    ;if value being checked is max/min, move to back of list
    [(or (= (car aList) (max-list-value aList) ) (= (car aList) (min-list-value aList) ))
      (middle-value (append (cdr aList) (list (car aList) ) ) )
    ]
    ;returns values if it is between min and max
    [else
      (car aList)
    ]
  )
)

; function from last problem
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

; function from last problem
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
  (display "(middle-value '(10 20 15): ")
  (display (middle-value '(10 20 15) ) )
  (newline)
  (display "(middle-value '(3 10 4 0): ")
  (display (middle-value '(3 10 4 0) ) )
  (newline)
  (display "(middle-value '(): ")
  (display (middle-value '() ) )
  (newline)
  (display "(middle-value '(5 8): ")
  (display (middle-value '(5 8) ) )
  (newline)
)

(main)
