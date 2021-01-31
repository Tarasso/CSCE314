; File: SchemeFlipped2.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/4/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 2 Q 2

(define (performance_review_score s)
    (cond
        [(and (< s 3) (or (> s 0) (= s 0)))
            "Product could use some improvement."
        ]
        [(< s 4)
            "Good Product"
        ]
        [(or (< s 5) (= s 5))
            "Excellent Product"
        ]
        [else
            "Bad Input"
        ]
    )
)

(define (main)
    (display "(performance_review_score 1): ")
    (display (performance_review_score 1))
    (newline)
    (display "(performance_review_score 3): ")
    (display (performance_review_score 3))
    (newline)
    (display "(performance_review_score 4): ")
    (display (performance_review_score 4))
    (newline)
    (display "(performance_review_score 5): ")
    (display (performance_review_score 5))
)

(main)
