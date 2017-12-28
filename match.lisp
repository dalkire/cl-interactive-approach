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
(defun match-element (e1 e2)
  "Returns T if its two arguments are eql or if either of them is a variable as recognized by variablep."
  (or (eql e1 e2)
      (or (variablep e1) (variablep e2))))
