; File: SchemeFlipped4.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 8/27/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 1 Q 3

(define (multiply a b)
  (
    display
      (*
        a
        b
      )
  )
  (newline)
)

(define (main)
  (multiply 2 3)
  (multiply 7 2.5)
  (multiply 13 4.25)
  (multiply 9.8 16)
)

(main)
(exit)
