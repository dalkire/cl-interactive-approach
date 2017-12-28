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
  (char= #\? (char (symbol-name s) 0)))
