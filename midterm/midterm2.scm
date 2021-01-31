; Bryson Kyle Mrosko
; kylemrosko@tamu.edu


(define (cross L1 L2)
  (cond
  ( (not (eq? L1 '()))
      (cons (helper (car L1) L2) (cross (cdr L1) L2 ) )
  )
)
)

(define (helper item L2)
  (cond
    (   (not(null? L2))
        (cons (list item (car L2)) (helper item (cdr L2)) )
    )
  )
)


(define (main)
  (display (cross '(1 2 3) '(a b)) )
  (newline)
  (display (cross '(hi) '(bye there)) )
  (newline)
 )

(main)
