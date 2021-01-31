; File: SchemeFlipped6.scm
; Written by: Melanie Peavy & Kyle Mrosko
; Data: 8/27/20
; TAMU Email: melanie_peavy@tamu.edu & kylemrosko@tamu.edu
; Class: CSCE 314
; Description: Lab 1 Q 4

(define (CurvedGrade grade curve-function)
  (curve-function grade)
)


(define (main)
  (display "Function 1: multiply the grade by 1.2\n")
  (display "Grade 1: 80\n")
  (display "Curved Grade: ")
  (display (CurvedGrade 80 (lambda (grade) (* grade 1.2) ) ))
  (newline)
  (display "Function 2: add five to the grade\n")
  (display "Grade 2: 90\n")
  (display "Curved Grade: ")
  (display (CurvedGrade 90 (lambda (grade) (+ grade 5) ) ) )
  (newline)

)

(main)
(exit)
