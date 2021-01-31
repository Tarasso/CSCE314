; File: average.scm
; Written by: Kyle Mrosko
; Data: 8/20/20
; TAMU Email: kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Averages three numbers

(define x 0)
(define y 0)
(define z 0)
(set! x (read) )
(set! y (read) )
(set! z (read) )
(display "The average is:")
(display ( / ( + x y z) 3 ) )
(exit)

;(display "The average is:")
;(display ( / ( + (read) (read) (read)) 3 ) )
;(exit)
