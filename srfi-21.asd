;;;; srfi-21.asd -*- Mode: Lisp;-*-

(cl:in-package :asdf)

(defsystem :srfi-21
  :serial t
  :depends-on (:fiveam
               :srfi-18)
  :components ((:file "package")
               (:file "srfi-21")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-21))))
  (load-system :srfi-21)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-21.internal :srfi-21))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))
