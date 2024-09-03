;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <The Blue Lines>
;;;
;;; Description:
;;;   <Oh blue lines, how you
;;;    decide my academic
;;;    fate (and GPA).>

(define (draw)
(penup)
(setpos -65 -55) 
(color "#0096FF")
(pendown)
(begin_fill)
(forward 90)
(left 90)
(circle 35 90)
(forward 55)
(left 90)
(forward 35)
(left 90)
(end_fill)
(penup)

(setpos -15 -55)
(pendown)
(begin_fill)
(forward 125)
(left 90)
(forward 35)
(left 90)
(forward 125)
(left 90)
(forward 35)
(left 90)
(end_fill)
(penup)

(setpos 35 -55)
(pendown)
(begin_fill)
(forward 160)
(left 90)
(forward 35)
(left 90)
(forward 160)
(left 90)
(forward 35)
(left 90)
(end_fill)
(penup)

(setpos 50 -55)
(pendown)
(begin_fill)
(right 90)
(circle 35 90)
(forward 105)
(left 90)
(forward 35)
(left 90)
(forward 140)
(left 90)
(end_fill)
(penup)

(hideturtle)
  (exitonclick))
  
; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)