; File: SchemeFlipped3.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/4/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 2 Q 3

(define (comparexy x y)
    (cond
        [(< x y)
            "x is less than y"
        ]
        [(> x y)
            "x is greater than y"
        ]
        [else
            "x is equal to y"
        ]
    )
)

(define (main)
    (display "(comparexy 23 22): ")
    (display (comparexy 23 22))
    (newline)
    (display "(comparexy 1.2 1.2): ")
    (display (comparexy 1.2 1.2))
    (newline)
    (display "(comparexy 3 7): ")
    (display (comparexy 3 7))
)

(main)
