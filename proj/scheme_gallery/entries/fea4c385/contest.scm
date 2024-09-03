;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Colorful Mandelbrot>
;;;
;;; Description:
;;;   <Numbers so complex,
;;;    paint colors from equations,
;;;    pixel by pixel.>

(define (draw)
  ; YOUR CODE HERE
  (hideturtle)
  (next (- wall) (- wall))
  (exitonclick))

(define wall 300)
(define its 51)

(define (next x y)
  (pixel (+ x wall 2) (+ y wall 2) (col (/ x wall -0.5) (/ y wall 0.5) 0 0 its))
  (cond
    ((>= y wall))
    ((< x wall) (next (+ x 1) y))
    (else (next (- wall) (+ y 1)))
  )
)

(define (col x y a b i)
    (let ((A (- (* a a) (* b b) x)) (B (+ (* 2 a b) y)))
      (cond
        ((zero? i) "black")
        ((>= (+ (* A A) (* B B)) 4) (conv (/ (- its i) 51)))
        (else (col x y A B (- i 1)))
      )
    )
  )

(define (conv h)
  (define x (- 1 (abs (- (modulo (* h 6) 2) 1))))
  (cond
    ((< h (/ 1 6)) (rgb 1 x 0))
    ((< h (/ 2 6)) (rgb x 1 0))
    ((< h (/ 3 6)) (rgb 0 1 x))
    ((< h (/ 4 6)) (rgb 0 x 1))
    ((< h (/ 5 6)) (rgb x 0 1))
    (else (rgb 1 0 x))
    )
  )

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)