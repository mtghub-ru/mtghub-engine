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

(defclass player ()
  ((name
    :initarg :name
    :initform (error "Must supply a player's name")
    :accessor name
    :documentation "Every player has name. It's player's ID.")
   (life
    :initarg :life
    :initform 20
    :accessor life
    :documentation "Player lose game if his life will become to equal 0 or less.")
   (library
    :initarg :deck
    :initform (list)
    :accessor library
    :documentation "[Rule 401] When a game begins, each player’s deck becomes his or her library.")
   (hand
    :initarg :hand
    :initform (list)
    :accessor hand
    :documentation "[Rule 402] The hand is where a player holds cards that have been drawn.")
   (graveyard
    :initarg :graveyard
    :initform (list)
    :accessor graveyard
    :documentation "[Rule 404] A player’s graveyard is his or her discard pile.")))

(defun make-plaer (name)
  (make-instance 'player :name name))
