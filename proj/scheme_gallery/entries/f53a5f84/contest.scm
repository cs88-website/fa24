;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Black Hole
;;;
;;; Description:
;;;   Black Hole 
;;;   Interpolating curves and colors
;;;   From bright to darkness, swallow all

(define (cadr x)
   (car (cdr x)))

;;; Utility for lerping ===============================================================
(define (lerp a b t)
    (+ (* a (- 1 t)) (* b t)))

(define (get-lerp-t start end cur)
  (/ (- cur start) (- end start)))

;;; Utility for color ===============================================================
(define (get-red rgb-color)
   (car rgb-color))

(define (get-green rgb-color)
   (car (cdr rgb-color)))

(define (get-blue rgb-color)
   (car (cdr (cdr rgb-color))))

(define (lerp-color color1 color2 t)
  (list (lerp (get-red color1) (get-red color2) t)
        (lerp (get-green color1) (get-green color2) t)
        (lerp (get-blue color1) (get-blue color2) t)))

;;; Utility for math ===============================================================
(define (ellipse-slope x y a b)
  (- (/ (* x (expt b 2))
         (* y (expt a 2)))))

(define (is-point-in-circle x y circle-x circle-y circle-radius)
  (let ((distance (sqrt (+ (expt (- x circle-x) 2)
                           (expt (- y circle-y) 2)))))
    (<= distance circle-radius)))

(define pi 3.1415926)
(define (degrees2radians degrees)
  (* degrees (/ pi 180)))

(define (find-rupper-intersect a b r)
  (define (loop theta intersect-x intersect-y)
    (if (= theta 360)
        (list intersect-x intersect-y)
        (let ((x (* a (cos (degrees2radians theta))))
              (y (* b (sin (degrees2radians theta)))))
          (let ((is-in-circle (is-point-in-circle x y 0 0 r)))
            (if (and (> y 0) is-in-circle (> x intersect-x))
                (loop (+ theta 1) x y)
                (loop (+ theta 1) intersect-x intersect-y))))))
  (loop 0 0 0))

(define (cubic-bezier t p0 p1 p2 p3)
   (list (+ (* (expt (- 1 t) 3) (car p0))
            (* 3 (expt (- 1 t) 2) t (car p1))
            (* 3 (- 1 t) (expt t 2) (car p2))
            (* (expt t 3) (car p3)))
         (+ (* (expt (- 1 t) 3) (cadr p0))
            (* 3 (expt (- 1 t) 2) t (cadr p1))
            (* 3 (- 1 t) (expt t 2) (cadr p2))
            (* (expt t 3) (cadr p3)))))

(define (circle-point r deg)
   (let ((x (* r (cos (degrees2radians deg))))
         (y (* r (sin (degrees2radians deg)))))
      (list x y)))

(define (ellipse-point x a b)
  (if (> (abs x) a)
      '"The x-coordinate is not on the ellipse."
      (begin (define y1 (* b (sqrt (- 1 (expt (/ x a) 2)))))
            (define y2 (- y1))
            (list (list x y1) (list x y2)))))

(define (circle-tangent-slope x y)
  (if (not (= y 0))
      (- (/ x y))
      '"The slope is undefined at this point."))

(define (unit-vector slope positive-x?)
  (let ((x-component (if positive-x? 1 -1)))
    (let ((direction (list x-component (* slope x-component))))
      (let ((length (sqrt (+ (expt (car direction) 2) (expt (cadr direction) 2)))))
        (list (/ (car direction) length) (/ (cadr direction) length))))))

(define (add-vector v1 v2 k)
  (list (+ (car v1) (* k (car v2)))
        (+ (cadr v1) (* k (cadr v2)))))

(define (in-range start end cur)
   (and (>= cur start) (< cur end)))

;;;Utility for turtle ===============================================================
(define (teleport x y)
   (pu)
   (goto x y)
   (pd)
   )

(define (to-rgb-str rgb-color)
   (rgb (/ (get-red rgb-color) 255)
         (/ (get-green rgb-color) 255)
         (/ (get-blue rgb-color) 255))
)

(define (pencolor rgb-color)
   (color (to-rgb-str rgb-color)))

(define (draw-ellipse-clip a b abs_x_bound)
   (define (loop theta)
      (if (= theta 360)
         ()
         (let ((x (* a (cos (degrees2radians theta))))
              (y (* b (sin (degrees2radians theta)))))
              (if (and (> y 0) (< (abs x) abs_x_bound))
               (begin (pu) (loop (+ theta 1)))
               (begin (goto x y) (pd) (loop (+ theta 1))))
          )))
   (begin (teleport a 0) (loop 0)))

(define (draw-circle-partial r angle)
   (let ((half-angle (/ angle 2)))
      (begin (teleport (* r (cos (degrees2radians (- 90 half-angle))))
                        (* r (sin (degrees2radians (- 90 half-angle)))))
            (seth (- half-angle 90))
            (circle r angle))))

(define (draw-cubic-bezier p0 p1 p2 p3)
   (let ((start (cubic-bezier 0 p0 p1 p2 p3)))
      (teleport (car start) (cadr start))
      (pendown)
      (define (draw-steps i)
         (if (< i 101)
            (let ((point (cubic-bezier (/ i 100) p0 p1 p2 p3)))
               (goto (car point) (cadr point))
               (draw-steps (+ i 1)))
            ()))
      (draw-steps 0)))

; Parameters ===============================================================
(define init-r 100)
(define max-r 220)
(define angle 100)
(define hangle (/ angle 2))
(define step 6)


; Colors ===============================================================
; White
; (define bright  '(255 252 239))
; (define dim  '(252 190 120))
; (define dark  '(173 101 48))
; (define black  '(0 0 0))
; Red
(define bright  '(255 135 102))
(define dim  '(191 38 81))
(define dark  '(82 33 110))
(define black  '(24 28 48))
; Oh no! Magic numbers...
(define uhr1 (lerp init-r max-r 0.35)) ; uhr = upper half range
(define uhr2 (lerp init-r max-r 0.65))
(define uhr3 (lerp init-r max-r 0.78))
(define uhr4 (lerp init-r max-r 1))
(define (get-uhring-color r)
   (cond ((< r uhr1) bright)
      ((in-range uhr1 uhr2 r) (lerp-color bright dim (get-lerp-t uhr1 uhr2 r)))
      ((in-range uhr2 uhr3 r) (lerp-color dim dark (get-lerp-t uhr2 uhr3 r)))
      ((in-range uhr3 (+ uhr4 1) r) (lerp-color dark black (get-lerp-t uhr3 uhr4 r)))
      (else '())
))

(define lhr1 (lerp init-r max-r 0.15)) ; uhr = lower half range
(define lhr2 (lerp init-r max-r 0.50))
(define lhr3 (lerp init-r max-r 0.65))
(define lhr4 (lerp init-r max-r 0.85))
(define lhr5 (lerp init-r max-r 1))
(define (get-lhring-color r)
   (cond ((in-range init-r lhr1 r) (lerp-color dark bright (get-lerp-t init-r lhr1 r)))
      ((in-range lhr2 lhr3 r) (lerp-color bright dim (get-lerp-t lhr2 lhr3 r)))
      ((in-range lhr3 lhr4 r) (lerp-color dim dark (get-lerp-t lhr3 lhr4 r)))
      ((in-range lhr4 (+ 1 lhr5) r) (lerp-color dark black (get-lerp-t lhr4 lhr5 r)))
      (else bright)
))


; Draw ===============================================================
(define (draw-dopper-bezier-side a b circle-end curve-end right?)
   (begin (define k1 (circle-tangent-slope (car circle-end) (cadr circle-end)))
         (define k2 (ellipse-slope (car curve-end) (cadr curve-end) a b))
         (define c1 (add-vector circle-end (unit-vector k1 right?) 15))
         (define c2 (add-vector curve-end (unit-vector k2 (not right?)) 30))
         (draw-cubic-bezier circle-end c1 c2 curve-end)))

(define (draw-dopper-bezier a b right-circle-end right-curve-end)
   (begin (define left-circle-end (list (- (car right-circle-end)) (cadr right-circle-end)))
         (define left-curve-end (list (- (car right-curve-end)) (cadr right-curve-end)))
         (draw-dopper-bezier-side a b right-circle-end right-curve-end #t)
         (draw-dopper-bezier-side a b left-circle-end left-curve-end #f)))

(define (draw-dopper a b r hcirangle) ; hcirangle = half circle angle
   (begin (define right-circle-end (circle-point r (- 90 hcirangle)))
         (define right-intersect (find-rupper-intersect a b r))
         (define right-curve-end (car (ellipse-point (/ (+ (car right-intersect) a) 2) a b)))
         (draw-ellipse-clip a b (car right-curve-end))
         (draw-dopper-bezier a b right-circle-end right-curve-end)))

(define (draw-photon-ring)
   (begin (pencolor bright)
         (seth 90)
         (define r (* 0.8 init-r))
         (teleport 0 (- r))
         (circle r)
         (pencolor dim)
         (teleport 0 (- (+ 2 r)))
         (circle (+ 2 r))))

(define (draw-lower-half-ring) 
   (define (loop start end step cur) 
      (if (< cur end)
         (begin (pencolor (get-lhring-color cur))
               (teleport (- cur) 0)
               (seth 180) ; set to south to draw half circle
               (circle cur 180)
               (loop start end step (+ cur step)))))
   (loop init-r max-r step init-r)
)

(define (draw-upper-half-ring)
   (define (loop start end step cur)
      (if (< cur end)
         (begin (pencolor (get-uhring-color cur))
               (draw-circle-partial cur angle)
               (define t (get-lerp-t init-r max-r cur))
               (define a (* cur (lerp 1.2 2 t)))
               (define b (/ a (lerp 9 6 t)))
               (draw-dopper a b cur hangle)
               (loop start end step (+ cur step)))))
   (loop init-r max-r step init-r)   
)


(define (draw)
   (bgcolor (to-rgb-str black))
   (draw-photon-ring)
   (draw-lower-half-ring)
   (draw-upper-half-ring)
   (hideturtle)
   (exitonclick))

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)