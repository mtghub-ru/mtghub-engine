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

(defpackage :mtghub-engine
  (:use :cl :cl-match :mtghub.game.objects)
  (:export :method-for-test))

(defpackage :mtghub-test
  (:use :cl :mtghub-engine :prove))

;; EOF
