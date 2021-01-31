; File: SchemeFlipped1.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/4/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 2 Q 1

(define (weather w)
    (cond
        [(equal? w "r")
            "Rain"
        ]
        [(equal? w "s")
            "Sunny"
        ]
        [else
            "Combination"
        ]
    )
)

(define (main)
    (display "(weather \"r\"): ")
    (display (weather "r"))
    (newline)
    (display "(weather \"s\"): ")
    (display (weather "s"))
    (newline)
    (display "(weather \"t\"): ")
    (display (weather "t"))
    (newline)
)

(main)
