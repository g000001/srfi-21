;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-21
  (:import-from :srfi-18
   :current-thread :thread? :make-thread :thread-name :thread-specific
   :thread-specific-set! :thread-start! :thread-yield! :thread-sleep!
   :thread-terminate! :thread-join! :mutex? :make-mutex :mutex-name
   :mutex-specific :mutex-specific-set! :mutex-state :mutex-lock! :mutex-unlock!
   :condition-variable? :make-condition-variable :condition-variable-name
   :condition-variable-specific :condition-variable-specific-set!
   :condition-variable-signal! :condition-variable-broadcast! :current-time
   :time? :time->seconds :seconds->time :current-exception-handler
   :with-exception-handler :raise :join-timeout-exception?
   :abandoned-mutex-exception? :terminated-thread-exception? :uncaught-exception?
   :uncaught-exception-reason)
  (:export
   :current-thread :thread? :make-thread :thread-name :thread-specific
   :thread-specific-set! :thread-base-priority :thread-base-priority-set!
   :thread-priority-boost :thread-priority-boost-set! :thread-quantum
   :thread-quantum-set! :thread-start! :thread-yield! :thread-sleep!
   :thread-terminate! :thread-join! :mutex? :make-mutex :mutex-name
   :mutex-specific :mutex-specific-set! :mutex-state :mutex-lock! :mutex-unlock!
   :condition-variable? :make-condition-variable :condition-variable-name
   :condition-variable-specific :condition-variable-specific-set!
   :condition-variable-signal! :condition-variable-broadcast! :current-time
   :time? :time->seconds :seconds->time :current-exception-handler
   :with-exception-handler :raise :join-timeout-exception?
   :abandoned-mutex-exception? :terminated-thread-exception? :uncaught-exception?
   :uncaught-exception-reason ))

(defpackage :srfi-21.internal
  (:use :srfi-21 :cl :fiveam))
