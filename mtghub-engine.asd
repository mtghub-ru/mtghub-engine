;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: MTGHUB-ENGINE; Base: 10 -*- file: rsn-mtg.asd

;;;; Copyright (c) 2015 "mtghub.ru" Glebov Boris (aka Warlock_29A)<//mtghub.ru>
;;;; See LICENSE for additional information.

(in-package :cl-user)

(defpackage mtghub-engine-asd
  (:use :cl :asdf))

(in-package :mtghub-engine-asd)

(defsystem mtghub-engine
    :author "Glebov Boris (aka Warlock_29A) Project <mtghub.ru>"
    :name "mtghub-engine"
    :maintainer "Glebov Boris"
    :licence "mtghub.ru licence"
    :description "Free implementation core rules Magic The Gathering for mtghub.ru"
    :serial t
    :depends-on (:cl-match :uuid)
    :components ((:file "packages")
                 (:module "src"
                  :components
                  ((:module "game-objects"
                    :pathname "game-objects"
                    :components
                    ((:file "object")
                     (:file "card")
                     (:file "player")))
                   (:module "game-machine"
                    :pathname "game-machine"
                    :components
                    ((:file "macros")
                     (:file "mgml")
                     (:file "game-machine")))
                   (:file "game-enums")
                   (:file "game")))
                 (:file "mtghub-engine")))

;; EOF
