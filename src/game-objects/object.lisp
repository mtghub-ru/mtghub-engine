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
    :initarg :name
    :initform (error "Must supply a object name")
    :accessor name
    :documentation "[Rule 201] The name of a card is printed on its upper left corner.")
   (card-types
    :initarg :card-types
    :initform (list)
    :accessor card-types
    :documentation "[205.2] The card types are artifact, conspiracy, creature, enchantment, instant, land, phenomenon, plane, planeswalker, scheme, sorcery, tribal, and vanguard")
   (color
    :reader :color
    :documentation "[Rule 200] An object can be one or more of the five colors, or it can be no color at all")
   (color-indicator
    :initarg :color-indicator
    :initform (list)
    :accessor color-indicator
    :documentation "[Rule 204] An object can be one or more of the five colors, or it can be no color at all")
   (mana-cost
    :initarg :mana-cost
    :initform (list)
    :accessor mana-cost
    :documentation "[Rule 202] A card’s mana cost is indicated by mana symbols near the top of the card")))
