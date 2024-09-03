;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Purple Tree of the Painter Turtle
;;;
;;; Description:
;;;  turtle purple tree,
;;;  pleased to paint the prettiest
;;;  tokens upon thee

(define (dec n)
  (* 0.01 (modulo n 100)))

(define (down n) (- n 1))
(define (nothing n) n)

;;;better code

(define (rstat x y z) ;reset at x, y, face z
  (pu) (seth z) (goto x y) (pd))

(define (hailstone n) ;returns next number in sequence
  (cond
  ((= n 1) 1)
  ((= 0 (modulo n 2)) (* n 0.5))
  (else (+ (* n 3) 1))
))


(define (fi s n) ;"find in list s, the nth element"
  (cond
  ( (= n 1) (car s))
  (else (fi (cdr s) (- n 1))))
)

(define (iter s) ;apply iteration function f to number, in a given n-f pair
  ( (car (cdr s)) (car s) )
)

(define (iter-all many arg) ;return list where all n-f pairs have been iterated
  (cond
  ((= many 1) `(( ,(iter (car arg)) ,(car (cdr (car arg))) )))
  (else (cons `( ,(iter (car arg)) ,(car (cdr (car arg))) )
        (iter-all (- many 1) (cdr arg))
      ))
  )
)

(define (rrr many arg f) ;arg is a list of many pairs. ( (1 f) ), where 1 is n, f is how n iterates
  (let ( (n (car (fi arg 1))) ) ; easily access n
    (cond
      ((= n 1) (f arg))
      ((= n 0))
      (else ( begin (f arg) (rrr many (iter-all many arg) f)))
    )
  )
)


;;; flower, takes in 4 args
(define (flower arg) (begin
      (color (rgb (dec (car (fi arg 1))) (dec (car (fi arg 4))) (dec (car (fi arg 4)))))
      (pu) (rt 45) (fd 10) (pd) (begin_fill)
        (circle
      (car (fi arg 3))
      (car (fi arg 2)))
      (end_fill)
      ))

(define flower_args `( (10 ,(lambda (n) (- n 1)) ) ;petals
                (360 ,(lambda (n) (modulo (- n 0) 361) ) ) ;angle
                (5 ,(lambda (n) (- n 0)) ) ;radius
                (25 ,hailstone) ;color jitter
    ) )

;==============================================================

 (define (temp arg)
  (rrr 4 `(
          (15 ,(lambda (n) (- n 1)) ) ;flowers to make
          (,(- 450) ,(lambda (n) (+ n 75))) ; x location
          (0 ,(lambda (n) n)) ; y location
          (20 ,(lambda (n) (modulo (- n 48) 361) ) ) ; rotate a bit
          )
    (lambda (arg) (rrr 4 flower_args flower)
      (seth 45) (pu) (fd 25) (pd)
      )))

(define (branch arg)
  (let (
    (n (car (fi arg 5))) (dist (car (fi arg 2))) (angle (car (fi arg 3))) (reps (car (fi arg 4)))
  )
  (cond ((< reps 1));no more branching.
  (else (begin (pd) ;branch, and branch some more.
  (color (rgb (dec dist) (dec reps) (dec n)))
  (rt angle) (fd dist) (branch (iter-all 5 arg))
  (pu)  (rt (- angle)) (bk dist) (pd) ;split right
  (rt (- angle)) (fd dist) (branch (iter-all 5 arg))
  (pu)  (rt angle) (bk dist) (pd)) ;split left
))))

(define branch_args `( (12 ,(lambda (n) (- n 1)) ) ;n
                (99 ,(lambda (n) (* n 0.75))) ; branch length
                (10 ,nothing ) ; angle
                (8 ,(lambda (n) (- n 1))) ; more times to split
                (122 ,(lambda (n) (hailstone n)) ) ;jitter color
))

(define (branch_flow arg)
  (let (
    (n (car (fi arg 5))) (dist (car (fi arg 2))) (angle (car (fi arg 3))) (reps (car (fi arg 4)))
  )
  (cond ((< reps 1));no more branching.
  (else (begin (pd) ;branch, and branch some more.
  (color (rgb (dec dist) (dec reps) (dec n)))
  (fd dist) (rt angle) (fd dist)
  (rrr 4 flower2_args flower2) ;don't miss this
  (branch_flow (iter-all 5 arg))
  (pu) (bk dist) (rt (- angle)) (bk dist) (pd) ;split right
  (fd dist) (rt (- angle)) (fd dist) (branch_flow (iter-all 5 arg))
  (rrr 4 flower2_args flower2) ;flower agian
  (pu) (bk dist) (rt angle) (bk dist) (pd)) ;split left
))))

(define (flower2 arg) (begin
      (color (rgb (dec (car (fi arg 4))) (dec (car (fi arg 3))) (dec (car (fi arg 4)))))
      (pu) (rt 45) (fd 10) (pd) (begin_fill)
        (circle
      (car (fi arg 3))
      (car (fi arg 2)))
      (end_fill)
        (rt -90) (pu) (fd 4)
        (circle
        (car (fi arg 3))
        (car (fi arg 2)))
        (pu) (bk 4) (rt 90)
      ))

(define flower2_args `( (8 ,(lambda (n) (- n 1)) ) ;petals
                (90 ,(lambda (n) (modulo (- n 0) 361) ) ) ;angle
                (4 ,(lambda (n) (- n 0)) ) ;radius
                (29 ,hailstone) ;color jitter
    ) )

(define (draw)
  (bgcolor "goldenrod")
  (speed 0)

  (rstat 0 450 180) (rrr 5 branch_args branch_flow)
  (rrr 4 `( (20 ,(lambda (n) (- n 1)))
            (40 ,(lambda (n) (- n 4)))
            (29 ,hailstone)
            (29 ,hailstone)
      )
    (lambda (arg) (rstat (car (fi arg 2)) -500 0) (pd)
      (color (rgb 0.4 0 0.5))
      (fd 235)) )
  (ht)
  )

; repeat the following


  (exitonclick)

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)