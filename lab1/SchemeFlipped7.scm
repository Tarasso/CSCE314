; File: SchemeFlipped7.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 8/27/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 1 Q 1

(define PI 3.14) ;but this is a more accurate way (acos(- 1))

(define (CircleArea r)
      (*
        (* r r)
        PI
      )
)

(define (main)
  (display "(CircleArea 2) = ")
  (display (CircleArea 2))
  (newline)
  (display "(CircleArea 4) = ")
  (display (CircleArea 4))
  (newline)
)

(main)
(exit)
