;;;; srfi-21.lisp

(cl:in-package :srfi-21.internal)

(def-suite srfi-21)

(in-suite srfi-21)

(defstruct (srfi-21-thread
            #+sbcl (:include sb-thread::srfi-19-thread)
            (:constructor make-thread (thunk &optional name
                                       &aux (function thunk))))
  base-priority
  priority-boost
  quantum)

(defun thread-quantum (thread)
  (srfi-21-thread-quantum thread))

(defun thread-quantum-set! (thread quantum)
  (setf (srfi-21-thread-quantum thread)
        quantum))

(defun thread-priority-boost (thread)
  (srfi-21-thread-priority-boost thread))

(defun thread-priority-boost-set! (thread priority-boost)
  (setf (srfi-21-thread-priority-boost thread)
        priority-boost))

(defun thread-base-priority (thread)
  (srfi-21-thread-base-priority thread))

(defun thread-base-priority-set! (thread base-priority)
  (setf (srfi-21-thread-base-priority thread)
        base-priority))

#|(let ((th (make-thread (lambda () (sleep 2) :end)
                       "sleep 2")))
  (thread-base-priority-set! th 10)
  (thread-priority-boost-set! th 3)
  (thread-quantum-set! th 0.1)
  (thread-start! th)
  (list (thread-name th)
        (thread-base-priority th)
        (thread-priority-boost th)
        (thread-quantum th)
        (thread-join! th)))|#
;=>  ("sleep 10" 10 3 0.1 :END)

;;; eof
