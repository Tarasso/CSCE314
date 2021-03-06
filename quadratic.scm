; File: quadratic.scm
; Written by: Kyle Mrosko
; Data: 8/25/20
; TAMU Email: kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Applies quadratic formula to values a, b, c

(define (quadratic a b c)
  (/
    (+
      (sqrt
        (-
          (* b b)
          (* 4 a c)
        )
      )
      (* -1 b)
    )
    (* 2 a)
  )
)


(display (quadratic 1 6 9))
