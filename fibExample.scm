(define (fib n)
  (if (< n 2) n ; true
    (+ (fib (- n 1)) (fib (- n 2)))
  )
)

(display (fib 10) )
