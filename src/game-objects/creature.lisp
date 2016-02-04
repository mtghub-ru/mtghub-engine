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

(defclass creature (object)
  ((power
    :accessor get-power
    :initarg :power
    :initform 0
    :documentation "A creature’s power is the amount of damage it deals in combat.")
   (toughness
    :accessor get-toughness
    :initarg :toughness
    :initform 0
    :documentation "A creature’s toughness is the amount of damage needed to destroy it.")
   (is-sick
    :accessor get-is-sick
    :initarg :is-sick
    :initform 0
    :documentation "If creature has sick it don't can to attack or to play any abilities")
   (damage
    :accessor get-damage
    :initarg :damage
    :initform 0
    :documentation "Damage dealt to a creature by a source with neither wither nor infect is marked on that creature")))
