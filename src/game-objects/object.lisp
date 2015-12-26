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
    :documentation "[Rule 205.2] The card types are artifact, conspiracy, creature, enchantment, instant, land, phenomenon, plane, planeswalker, scheme, sorcery, tribal, and vanguard")
   (subtypes
    :initarg :subtypes
    :initform (list)
    :accessor subtypes
    :documentation "[Rule 205.3] Subtypes of each card type except plane are always single words and are listed after a long dash")
   (supertypes
    :initarg :supertypes
    :initform (list)
    :accessor supertypes
    :documentation "[Rule 205.4] These are printed directly before its card types. The supertypes are basic, legendary, ongoing, snow, and world.")
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
    :documentation "[Rule 202] A card’s mana cost is indicated by mana symbols near the top of the card")
   (rules-text
    :initarg :rules-text
    :initform ""
    :accessor rules-text
    :documentation "[Rule 207] The text box is printed on the lower half of the card. It usually contains rules text defining the card’s abilities.")
   (owner
    :initarg :owner
    :initform (error "Must supply a owner's object.")
    :accessor owner
    :documentation "All objects must has owner.")))
