; File: SchemeFlipped8.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 8/27/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 1 Q 2

(define (typeID v)
  (
    cond
      ((integer? v) "integer")
      ((number? v) "Float") ; if input is not an integer, but is a number, it is a float
      ((char? v) "Character")
      ((string? v) "String")
      ((boolean? v) "Boolean")
      ((null? v) "null")
      ((symbol? v) "Symbol")
      (else "unknown")
  )
)

(define (main)
  (display "(typeID 2) = ")
  (display (typeID 2))
  (newline)
  (display "(typeID #t) = ")
  (display (typeID #t))
  (newline)
  (display "(typeID 2.5) = ")
  (display (typeID 2.5))
  (newline)
  (display "(typeID \"string\") = ")
  (display (typeID "string"))
  (newline)
)

(main)
(exit)
