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

(defclass object ()
  ;;An object is an ability on the stack, a card, a copy of a card, a token, a spell, a permanent, or an emblem.
  ((name
    :init-arg :name
    :initform (error "Must supply a object name")
    :accessor name
    :documentation "The name of a card is printed on its upper left corner.")
   ()))
