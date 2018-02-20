10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> a b) (< b (* a b)))
  b
  a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers. 
(define (square x)
        (* x x))

(define (largestThree a b c)
        (cond ((> a b c) (+ (square a) (square b)))
              ((> a c b) (+ (square a) (square c)))
              ((> b c a) (+ (square b) (square c)))
              ((> b a c) (+ (square b) (square a)))
              ((> c a b) (+ (square c) (square a)))
              ((> c b a) (+ (square c) (square b)))
              ))

(largestThree 1 2 3)
(largestThree 1 3 2)
(largestThree 2 3 1)
(largestThree 2 1 3)
(largestThree 3 2 1)
(largestThree 3 1 2)

; Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; substitute b, determine if b > 0, if it is return (+ a b), if not return (- a b)
(a-plus-abs-b 1 2)
(a-plus-abs-b 1 -2)

; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; Then he evaluates the expression

; (test 0 (p))

; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.) 




