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

(defclass card ()
  ;; The standard component of the game.
  ((objects
    :initarg :objects
    :initform (list)
    :accessor objects
    :documentation "List of game objects (see rule's part #109 about Object)")))
