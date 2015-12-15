;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: MTGHUB-PORTAL; Base: 10 -*- file: rsn-mtg.asd

;;;; Copyright (c) 2015 "mtghub.ru" Glebov Boris (aka Warlock_29A)<//mtghub.ru>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage :mtghub-engine
  (:use :cl )
  (:export :method-for-test))

(defpackage :mtghub-test
  (:use :cl :mtghub-engine :prove))

(defvar mtghub-engine::*default-dir*
  (pathname (directory-namestring #.(or *compile-file-truename*
                                        *load-truename*)))
  "The directory path of the current file.")

;; EOF
