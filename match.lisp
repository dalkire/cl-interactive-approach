;;; 12.1 Begin a file named match. Set it up so that the functions
;;; in it will be defined in the match package.
(defpackage :match
  (:use :common-lisp))
(in-package :match)

;;; 12.2 In your match file, define a function variablep that takes one
;;; symbol as an argument and returns T if the first character of the
;;; symbol’s name is #\? and returns NIL otherwise. If you have a modern
;;; Lisp development environment, develop and test this function using the
;;; two-window approach described in this chapter.
(defun variablep (s)
  "Takes a symbol S as an argument and returns T if the first character of the symbol’s name is #\? and returns NIL otherwise."
  (and (symbolp s) (char= #\? (char (symbol-name s) 0))))

;;; 13.13 In your file match, which you began for Exercise 12.1, define the
;;; function (match-element e1 e2) to return T if its two arguments are eql
;;; or if either of them is a variable as recognized by match::variablep.

;;; 14.8 Also in your match file, redefine (match-element e1 e2) so that it
;;; returns True if the two arguments are eql or either argument is ?; if
;;; either argument is a variable (as recognized by variablep), match-element
;;; should return a two-member list whose first member is the variable and
;;; whose second member is the other argument; otherwise, match-element
;;; should return NIL.
(defun match-element (e1 e2)
  "Returns T if its two arguments are eql or if either of them is a variable as recognized by variablep."
  (cond ((eql e1 e2) t)
        ((or (eql e1 '?) (eql e2 '?)) t)
        ((variablep e1) (list e1 e2))
        ((variablep e2) (list e2 e1))))

;;; 14.7 In your match file, define the function dont-care to return True
;;; if its argument is a question-mark symbol and NIL in any other case.
;;; You might want to review the discussion of isqmark that starts on page
;;; 63. Make sure that (dont-care 5) returns NIL rather than causing an error.
(defun dont-care (s)
  "Returns T if its argument is a question-mark symbol and NIL in any other case."
  (and (symbolp s) (eql s '?)))
