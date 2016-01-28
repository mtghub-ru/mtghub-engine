#|
This file is a part of mtghub project.
Copyright (c) 2016 Glebov Boris (avatar29A@gmail.com)
|#

#|
Author: Glebov Boris (avatar29@gmail.com)
Project: http://mtghub.ru
GitHub: https://github.com/mtghub-ru/mtghub-engine/
|#

(in-package :mtghub.game.objects)

(defclass room ()
  ((name    :accessor get-name    :initarg :name)
   (players :accessor get-players :initarg :players)
   (engine  :accessor get-engine  :initarg :engine)))

(defun make-duel-room ()
  "Makes room for a duel game"
  )

(defun make-multiplaer-room ()
  "Makes room for a multiplaer game"
  )
