(define (weather condition)
  (cond
    ((string=? condition "snow") (display "It's winter\n"))
    ((string=? condition "fallen leaves") (display "It's fall\n"))
    ((string=? condition "hot") (display "It's summer\n"))
    (else (display "not sure\n"))
  )
)

(weather "snow")
(weather "fallen leaves")
(weather "hot")
(weather "rain")