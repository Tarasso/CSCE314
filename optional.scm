; File: optional.scm
; Written by: Kyle Mrosko
; Data: 8/25/20
; TAMU Email: kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Experiments with optional operator

(define (add3 a b #!optional (c 0)) ; optional thirs value that is automatically set to 0
  (+ a b c)
)

(define (mydisplay #!optional value)
  (display "My value is: ")
  (display value)
  (newline)
)

(display (add3 1 2))
(newline)
(display (add3 1 2 3))
(newline)
(mydisplay 5)
(mydisplay)
