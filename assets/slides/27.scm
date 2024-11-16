; Call expressions

(+ 1 2 3 4)
(+)
(*)
(- 12)
(- 20 1 2 3 4 5)
(+ 2 (* 2 (+ 3 (* 2 2 2 2 3 3 7))))
(number? 12)
(integer? 3.3)
(zero? 2)

; How Scheme changes programs

(define (a-plus-abs-b a b) ((if (< b 0) - +) a b))

; Lambda

((lambda (g y) (g (g y))) (lambda (x) (+ x 1)) 3)

(define (f g)
  (lambda (y) (g (g y))))
((f (lambda (x) (* x x))) 3)


