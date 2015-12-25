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

(defparameter *color-values*
  ;; [Rule 105.1] There are six types of mana:
  '(white
    black
    blue
    green
    red))

(defparameter *mana-type-values*
  ;; [Rule 106.1b] There are six types of mana:
  '(white
    black
    blue
    green
    red
    colorless))

(defparameter *card-type-values*
  ;; [Rule 205.2a] The card types are:
  '(artifact
    conspiracy
    creature
    enchantment
    instant
    land
    phenomenon
    plane
    planeswalker
    scheme
    sorcery
    tribal
    vanguard))


(defparameter *card-subtype-values*
  '())

(defparameter *artifact-type-values*
  ;; [Rule 205.3g] Artifacts have their own unique set of subtypes; these subtypes are called artifact types.
  '(contraption
    equipment
    fortification))

(defparameter *enchanetment-type-values*
  ;; [Rule 205.3h] Enchantments have their own unique set of subtypes;
  '(aura
    curse
    shrine))

(defparameter *land-type-values*
  ;; [Rule 205.3i] Lands have their own unique set of subtypes; these subtypes are called land types.
  '(desert
    ;; basyc land types
    forest
    island
    swamp
    mountain
    plains
    ;; ~
    gate
    lair
    locus
    mine
    power-plant
    swamp
    tower
    urzas
    ))

(defparameter *planeswalker-type-values*
  ;; [Rule 205.3j] Planeswalkers have their own unique set of subtypes; these subtypes are called planeswalker types.
  '(ajani
    ashiok
    bolas
    chandra
    dack
    daretti
    domri
    elspeth
    freyalise
    garruk
    gideon
    jace
    karn
    kiora
    koth
    liliana
    nahiri
    narset
    nissa
    nixilis
    ral
    sarkhan
    sorin
    tamiyo
    teferi
    tezzeret
    tibalt
    ugin
    venser
    vraska
    xenagos))

(defparameter *spell-type-values*
  ;; [Rule 205.3k]  Instants and sorceries share their lists of subtypes; these subtypes are called spell types
  '(arcane
    trap))

(defparameter *creature-type-values*
  ;; [Rule 205.3m] Creatures and tribals share their lists of subtypes; these subtypes are called creature types.
  '(Advisor Ally Angel Antelope Ape Archer Archon Artificer Assassin Assembly-Worker Atog Aurochs Avatar Badger Barbarian Basilisk Bat Bear Beast Beeble Berserker Bird Blinkmoth Boar Bringer Brushwagg Camarid Camel Caribou Carrier Cat Centaur Cephalid Chimera Citizen Cleric Cockatrice Construct Coward Crab Crocodile Cyclops Dauthi Demon Deserter Devil Djinn Dragon Drake Dreadnought Drone Druid Dryad Dwarf Efreet Elder Eldrazi Elemental Elephant Elf Elk Eye Faerie Ferret Fish Flagbearer Fox Frog Fungus Gargoyle Germ Giant Gnome Goat Goblin God Golem Gorgon Graveborn Gremlin Griffin Hag Harpy Hellion Hippo Hippogriff Homarid Homunculus Horror Horse Hound Human Hydra Hyena Illusion Imp Incarnation Insect Jellyfish Juggernaut Kavu Kirin Kithkin Knight Kobold Kor Kraken Lamia Lammasu Leech Leviathan Lhurgoyf Licid Lizard Manticore Masticore Mercenary Merfolk Metathran Minion Minotaur Monger Mongoose Monk Moonfolk Mutant Myr Mystic Naga Nautilus Nephilim Nightmare Nightstalker Ninja Noggle Nomad Nymph Octopus Ogre Ooze Orb Orc Orgg Ouphe Ox Oyster Pegasus Pentavite Pest Phelddagrif Phoenix Pincher Pirate Plant Praetor Prism Rabbit Rat Rebel Reflection Rhino Rigger Rogue Sable Salamander Samurai Sand Saproling Satyr Scarecrow Scorpion Scout Serf Serpent Shade Shaman Shapeshifter Sheep Siren Skeleton Slith Sliver Slug Snake Soldier Soltari Spawn Specter Spellshaper Sphinx Spider Spike Spirit Splinter Sponge Squid Squirrel Starfish Surrakar Survivor Tetravite Thalakos Thopter Thrull Treefolk Triskelavite Troll Turtle Unicorn Vampire Vedalken Viashino Volver Wall Warrior Weird Werewolf Whale Wizard Wolf Wolverine Wombat Worm Wraith Wurm Yeti Zombie Zuberaf))

(defparameter *planar-type-values*
  ;; [Rule 205.3n] Planes have their own unique set of subtypes; these subtypes are called planar types.
  '(Alara Arkhos Azgol Belenon Bolas’s Meditation Realm Dominaria Equilor Ergamon Fabacin Innistrad Iquatana Ir Kaldheim Kamigawa Karsus Kephalai Kinshala Kolbahan Kyneth Lorwyn Luvion Mercadia Mirrodin Moag Mongseng Muraganda New Phyrexia Phyrexia Pyrulea Rabiah Rath Ravnica Regatha Segovia Serra’s Realm Shadowmoor Shandalar Ulgrotha Valla Vryn Wildfire Xerex Zendikar))

(defparameter *supertype-values*
  '(basic
    legendary
    ongoing
    snow
    world))
