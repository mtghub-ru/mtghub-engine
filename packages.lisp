#|
This file is a part of mtghub project.
Copyright (c) 2016 Glebov Boris (avatar29A@gmail.com)
|#

#|
Author: Glebov Boris (avatar29@gmail.com)
Project: http://mtghub.ru
GitHub: https://github.com/mtghub-ru/mtghub-engine/
|#

(in-package :cl-user)

(defpackage :mtghub.game.objects
  (:use :cl))

(defpackage :mtghub.game.game-machine
  (:use :cl))

(defpackage :mtghub.game.enums
  (:use :cl))

(defpackage :mtghub.game
  (:use
   :cl
   :cl-match
   :mtghub.game.objects
   :mtghub.game.enums)
  (:export :method-for-test))

(defpackage :mtghub.engines
  )

(defpackage :mtghub.repl
  (:use :cl
        :mtghub.game))

(defpackage :mtghub-test
  (:use :cl :prove
        :mtghub.game))

;; EOF
