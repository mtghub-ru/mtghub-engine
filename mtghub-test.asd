;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: MTGHUB-ENGINE; Base: 10 -*- file: rsn-mtg.asd

;;;; Copyright (c) 2015 "mtghub.ru" Glebov Boris (aka Warlock_29A)<//mtghub.ru>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage mtghub-test-asd
  (:use :cl :asdf))

(in-package :mtghub-test-asd)

(defsystem mtghub-test
    :author "Glebov Boris (aka Warlock_29A) Project <mtghub.ru>"
    :name "mtghub-test"
    :maintainer "Glebov Boris"
    :licence "mtghub.ru licence"
    :description "Free implementation core rules Magic The Gathering for mtghub.ru"
    :serial t
    :defsystem-depends-on (:prove-asdf)
    :depends-on (:prove :mtghub-engine)
    :components ((:file "packages")
                 (:test-file "test/initial-test")
                 (:test-file "test/test-once"))
    :perform (test-op :after (op c)
                      (funcall (intern #.(string :run) :prove) c)))

;; EOF
