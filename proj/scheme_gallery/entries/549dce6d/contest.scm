;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Sesame Flowers
;;;
;;; Description:
;;;   TBD
;;;   TBD
;;;   TBD

(define (draw)
  ; YOUR CODE HERE
  
  ; fill-background func
  (define (fill-background)
  (penup)
  (goto 400 -400)
  (pendown)
  (color "black")
  (begin_fill)
  (forward 800)
  (left 90)
  (forward 800)
  (left 90)
  (forward 800)
  (left 90)
  (forward 800)
  (end_fill)
  (goto 0 0)
  (left 90)
  (penup))

  ; redefine circle
  (define old-circle circle)
  (define (circle x y) (fd 0) (old-circle x y))
  
  ; draw-circle func
  (define (draw-circle)
  (goto 220 0)
  (pendown)
  (color "#bdb2ff")
  (circle 220 360)
  (penup))

  ; flower functions
  (define (draw-flower-helper i scale-factor)
  (if (< i (* 180 (round-to-n scale-factor 1)))
      (begin
        (circle (* (- 190 i) scale-factor) 90)
        (left 90)
        (circle (* (- 190 i) scale-factor) 90)
        (left 190)
        (draw-flower-helper (+ i 1) scale-factor))))

  (define (draw-flower scl)
    (pendown)
    (draw-flower-helper 0 scl)
    (penup))

  ; round functions
  (define (round-to-n number n)
  (define (power-of-10 num)
    (expt 10 num))
  
  (define (round-helper num)
    (if (>= num 0)
        (floor (+ num 0.5))
        (ceil (- num 0.5))))
  
  (let ((multiplier (power-of-10 n)))
    (/ (round-helper (* number multiplier)) multiplier)))

  ; run functions
  (fill-background)
  
  (draw-circle)
  
  (circle 220 160)
  (color "#bdb2ff")
  (draw-flower 0.21)
  
  (circle 220 33)
  (color "#ffc6ff")
  (draw-flower 0.4)
  
  (circle 220 30)
  (color "#bdb2ff")
  (draw-flower 0.26)
  
  (circle 220 25)
  (color "#a0c4ff")
  (draw-flower 0.11)
  
  (circle 220 18)
  (color "#a0c4ff")
  (draw-flower 0.08)
  
  (circle 220 36)
  (color "#a0c4ff")
  (draw-flower 0.13)
  
  (circle 220 30)
  (color "#bdb2ff")
  (draw-flower 0.21)
  
  (circle 220 45)
  (color "#a0c4ff")
  (draw-flower 0.08)
  
  (circle 220 20)
  (color "#bdb2ff")
  (draw-flower 0.18)
  
  (circle 220 30)
  (color "#ffc6ff")
  (draw-flower 0.37)
  
  ; Ends here
  (exitonclick))

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)
