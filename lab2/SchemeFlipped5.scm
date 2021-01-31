; File: SchemeFlipped5.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 9/4/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 2 Q 5

(define (myfunction x y f1)
    (if (and (< x 0) (< y 0)) (+ (f1 x) (f1 y))
                                (if (or (= x 500) (= y 500)) (* (f1 x) (f1 x))
                                    (* x y)
                                )
    )
)

(define (main)
    (display "(myfunction 22 23 (lambda (grade) (+ grade 5))): ")
    (display (myfunction 22 23 (lambda (grade) (+ grade 5))))
    (newline)
    (display "(myfunction - 23 (lambda (grade) (+ grade 5))): ")
    (display (myfunction -1 23 (lambda (grade) (+ grade 5))))
    (newline)
    (display "(myfunction 22 -1 (lambda (grade) (+ grade 5))): ")
    (display (myfunction 22 -1 (lambda (grade) (+ grade 5))))
    (newline)
    (display "(myfunction -1 -2 (lambda (grade) (+ grade 5))): ")
    (display (myfunction -1 -2 (lambda (grade) (+ grade 5))))
    (newline)
    (display "(myfunction 500 23 (lambda (grade) (+ grade 5))): ")
    (display (myfunction 500 23 (lambda (grade) (+ grade 5))))
)

(main)
