(make-game :type 'duel
           :players '("victim", "hunter98")
           :hand-size 7)

(join "victim"
      :deck ((card (creature "goblin"
                             :tougness 1
                             :power 1) 10)
             (card (land 'plains) 10)
             (card (land 'mountains) 15))
      :life 20)

(join "hunter98"
      :deck ((card (creature "spider"
                             :tougness 1
                             :power 1) 10)
             (card (land 'forest) 25))
      :life 20)

(shuffle (deck 'player1)
         (card 'goblin)
         (card 'mountines)
         (card 'mountines)
         (card 'plains)
         (card 'goblin)) ;; etc

(shuffle (deck 'player2)
         (card 'forest)
         (card 'forest)
         (card 'spider)
         (card 'forest)) ;; etc

(make-deck *player1*
           (card "Фантом Джейса")
           (card "Маг Гильдии")
           (card "Island")
           (card ...))

(make-deck *player2*
           (card "Сфера задержания")
           (card "Храм Таинств")
           (card ...))

;; Take seven card for *player1*
(put (hand *player1*) (card "Водная Могила"))
(put (hand *player1*) (card "Убийство"))
(put (hand *player1*) (card "Маг Гильдии из Мантии Сумрака"))
(put (hand *player1*) (card "Растущий беспорядок"))
(put (hand *player1*) (card "Растущий беспорядок"))
(put (hand *player1*) (card "Последняя Цена"))
(put (hand *player1*) (card "Фантом Джейса"))

;; Take seven card for *player2*
(put (hand *player2*) (card "Растворение"))
(put (hand *player2*) (card "Лес"))
(put (hand *player2*) (card "Киора, Разбивающаяся Волна"))
(put (hand *player2*) (card "Лесная Кариатида"))
(put (hand *player2*) (card "Остров"))
(put (hand *player2*) (card "Высочайший Вердикт"))
(put (hand *player2*) (card "Церковный Сад"))

;; turn 0
(turn *player1*
      (main-phase
       (cast-land (card "Водная Могила")
                  (chose 1)))
      (combat-phase
       (beginning-combat-step (pass))
       (declare-attackers-step (pass))
       (declare-blockers-step (pass))
       (combat-damage-step (pass))
       (end-combat-step) (pass))
      (main-phase (pass))
      (ending-phase
       (end-step (pass))
       (cleanup-step (pass))))

;; turn 1
(turn *player2*
      (beginning-phase
       (untap-step )
       (upkeep-step)
       (draw-step
        (put (hand *active-player*) (card "Резвая Бегунья Круфикса"))))
      (main-phase
       (cast-land (get (hand *active-player*) (card "Церковный Сад"))
                  (chose 1)))
      (pass))

;; turn 2
(turn *player1*
      (beginning-phase
       (untap-step
        ;; When spell was resolved, then would created new permanent with unique ID.
        (untap (permanent #"Водная Могила [01]")))
       (upkeep-step (pass))
       (draw-step
        (put (hand *active-player*) (card "Последняя Цена"))))
      (main-phase
       ;; Activate ability. Common: (active (ref on permanent) #AbilityNumber)
       (active (permanent #"Водная Могила [01]") (chose 0))
       ))

;; turn 3
