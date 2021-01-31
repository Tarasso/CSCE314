(define (leaf? node)
  (null? (children node)))

(define (datum node)
  (car node))

(define (children node)
  (cdr node))

(define (count-leaves tree)
  (if (leaf? tree)
      1
      (count-leaves-in-forest (children tree))
  )
)

(define (count-leaves-in-forest forest)
  (if (null? forest)
      0
      (+ (count-leaves (car forest))
         (count-leaves-in-forest (cdr forest)))
  )
)

(define (make-node datum children)
  (cons datum children))

(define (leaf datum)
  (make-node datum '())
)

(define (cities name-list)
  (map leaf name-list)
)

(define (in-tree? place tree)
  (or (equal? place (datum tree))
      (in-forest? place (children tree))
  )
)

(define (in-forest? place forest)
  (if (null? forest)
      #f
      (or (in-tree? place (car forest))
	    (in-forest? place (cdr forest)))
  )
)

(define (locate city tree)
  (if (equal? city (datum tree))
      (list city)
      (let ((subpath (locate-in-forest city (children tree))))
        (if subpath
            (cons (datum tree) subpath)
            #f))))

(define (locate-in-forest city forest)
  (if (null? forest)
      #f
      (or (locate city (car forest))
	  (locate-in-forest city (cdr forest)))))

(define world-tree2
  (make-node
   'world
   (list (make-node
          'italy
          (cities '(venezia riomaggiore firenze roma)))
         (make-node
          '(united states)
          (list (make-node
                 'california
                 (cities '(berkeley (san francisco) gilroy)))
                (make-node
                 'massachusetts
                 (cities '(cambridge amherst sudbury)))
                (make-node 'ohio (cities '(kent)))))
         (make-node 'zimbabwe (cities '(harare hwange)))
         (make-node 'china
		        (cities '(beijing shanghai guangzhou suzhou)))
         (make-node
          '(great britain)
          (list 
           (make-node 'england (cities '(liverpool)))
           (make-node 'scotland
		            (cities '(edinburgh glasgow (gretna green))))
           (make-node 'wales (cities '(abergavenny)))))
         (make-node
          'australia
          (list
           (make-node 'victoria (cities '(melbourne)))
           (make-node '(new south wales) (cities '(sydney)))
           (make-node 'queensland
		            (cities '(cairns (port douglas))))))
         (make-node 'honduras (cities '(tegucigalpa))))))




; Lab Questions--------------------------------------------------

; Question 1
(display "Question 1")
(newline)
(display  (car (cadr (cdr (caddr (cddr (cdr world-tree2)))))))
(newline)
(newline)

;Question 2 -----------------------------------------------------

(define (count-nodes tree)
  (if (or (null? tree) (leaf? tree) )
    0
    (+ 1 (count-nodes-in-forest (children tree)))
  )
)

(define (count-nodes-in-forest forest)
  (if (null? forest)
      0
      (+ (count-nodes (car forest)) (count-nodes-in-forest (cdr forest)))
  )
)

(display "Question 2")
(newline)
(display (count-nodes world-tree2))
(newline)
(newline)

;Question 3 ----------------------------------------------------

(define (last lst)
    (if (leaf? lst)
        (car lst)
        (last (cdr lst))
    )
)


(define (rightmost node)
    (if (leaf? node)
        (datum node)
        (rightmost (last node))
    )
)

(display "Question 3")
(newline)
(display (rightmost world-tree2))
(newline)
(display (rightmost (car (cdr world-tree2))))
(newline)
(newline)

;Question 4 ---------------------------------------------------

(define (leafDisplay tree)
  (if (leaf? tree)
      (list(datum tree))
      (leafDisplay-forest (children tree))
  )
)

(define (leafDisplay-forest forest)
  (if (null? forest)
      '()
      (append (leafDisplay (car forest))
         (leafDisplay-forest (cdr forest)))
  )
)

(display "Question 4")
(newline)
(display (leafDisplay world-tree2))
(newline)
(newline)

;Question 5 ---------------------------------------------------

(define (replace city1 city2 tree)
  (if (eq? (car tree) city1)
      city2
      (cons (car tree) (replace-in-forest city1 city2 (children tree)))
  )
)

  (define (replace-in-forest city1 city2 forest)
  (if (null? forest)
      '()
      (cons (replace city1 city2 (car forest))
       (replace-in-forest city1 city2 (cdr forest)))
  )
)

(display "Question 5")
(newline)
(display (replace 'italy 'hello world-tree2))
(newline)
(newline)
