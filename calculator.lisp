;;; 12.5 Begin a file named calculator. Set it up so that the functions
;;; in it will be defined in the calculator package.
(defpackage :calculator
  (:use :common-lisp))
(in-package :match)

;;; 12.6 In your calculator file, define the function combine-expr to take
;;; an arithmetic operator, an operand, and a list representing an arithmetic
;;; expression and return the expression with the operator and operand
;;; applied to the first member of the expression. For example,
;;; (combine-expr ’+ 3 ’(5 - 6 * 8)) should evaluate to ((3 + 5) - 6 * 8).
(defun combine-expr (operator operand expression)
  (cons (list operand operator (first expression)) (rest expression)))
