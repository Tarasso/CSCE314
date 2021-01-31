; Bryson Kyle Mrosko
; kylemrosko@tamu.edu

(define (remainder top bot)
  (cond
    ((> top bot)
     (remainder (- top bot) bot)
     )
     ((= top bot)
     0
     )
    (else
     top
     )

  )
 )


(define (main)
  (display (remainder 50 10) )
  (newline)
  (display (remainder 10 3) )
  (newline)
  (display (remainder 18 5) )
  (newline)
 )

(main)
