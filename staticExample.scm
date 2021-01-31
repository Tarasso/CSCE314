(define n 100)

(define (clam)
   (display "in clam, n=")
   (display n)
   (newline))

(define (squid n)
   (display "in squid, n=")
   (display n)
   (newline)
   (clam))


(display "in main program, n=")
(display n)
(newline)
(squid 1)
(clam)

; originally from
; https://courses.cs.washington.edu/courses/cse341/14wi/general-concepts/scoping.html
