--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"

--LES VARIABLES------------------------------------------------------------------------------

damage_to_player = 0

---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------

    function EnnemyCreation(monster_choice) --Fonction d'initialisation du perso du player

        if player.level >= 1 and player.level <= 15 then 
            a = 1
            b = 18
            monster_choice = randomNumber(a, b)
        elseif player.level >= 16 and player.level <= 30 then
            a = 1
            b = 22
            monster_choice = randomNumber(a, b)
        elseif player.level >= 31 and player.level <= 45 then
            a = 1
            b = 34
            monster_choice = randomNumber(a, b)
        elseif player.level >= 46 and player.level <= 60 then
            a = 27
            b = 46
            monster_choice = randomNumber(a, b)
        elseif player.level >= 61 and player.level <= 76 then
            a = 27
            b = 54
            monster_choice = randomNumber(a, b)
        elseif player.level >= 77 and player.level <= 92 then
            a = 47
            b = 66
            monster_choice = randomNumber(a, b)
        elseif player.level >= 95 and player.level <= 100 then
            a = 1
            b = 100
            monster_choice = randomNumber(a, b)
        end

        create_Monster(monster_choice)

        ennemie = {}
        ennemie.id = monster.id
        ennemie.image = monster.image
        ennemie.name = monster.name
        ennemie.health_point = monster.health_point
        ennemie.max_health_point = monster.max_health_point
        ennemie.magic_point = monster.magic_point
        ennemie.max_magic_point = monster.max_magic_point
        ennemie.attack_point = monster.attack_point
        ennemie.max_attack_point = monster.max_attack_point
        ennemie.defense_point = monster.defense_point
        ennemie.max_defense_point = monster.max_defense_point
        ennemie.exp_loot = monster.exp_loot
        
    end

    function save_ennemy_Creation(monster_choice)
        create_Monster(monster_choice)

        ennemie = {}
        ennemie.id = monster.id
        ennemie.image = monster.image
        ennemie.name = monster.name
        ennemie.health_point = monster.health_point
        ennemie.max_health_point = monster.max_health_point
        ennemie.magic_point = monster.magic_point
        ennemie.max_magic_point = monster.max_magic_point
        ennemie.attack_point = monster.attack_point
        ennemie.max_attack_point = monster.max_attack_point
        ennemie.defense_point = monster.defense_point
        ennemie.max_defense_point = monster.max_defense_point
        ennemie.exp_loot = monster.exp_loot
    end



    function EnnemyDraw() --Fonction pour dessiner le perso du player
        
        love.graphics.draw(ennemie.image, 44*tileSize, 11.2*tileSize, 0, 2.1)

    end

    function EnnemyAI(dt, action_choice)

        action_choice = randomNumber(c, d)

        if action_choice >= 1 and action_choice <= 5 then
            ennemy_Normal_Attack(dt)
        elseif action_choice >= 6 and action_choice <= 8 then
            ennemy_Critical_Attack(dt)
        elseif action_choice >= 9 and action_choice <= 11 then
            ennemy_Special_Attack(dt)
        elseif action_choice >= 12 and action_choice <= 13 then
            ennemy_Defend(dt)
        elseif action_choice == 14 then
            ennemy_Rage(dt)
        elseif action_choice == 15 then
            ennemy_Regeneration(dt)
        end
        
    end

    ----------------------------------------------------------------------------------------
    --ENNEMY ACTION POSSIBLE
        
        function ennemy_Normal_Attack(dt) -- Attack normal de l'ennemie
            if player.health_point >= 1 and player.health_point <= player.max_health_point then

                damage_to_player = (ennemie.attack_point * (100/(100 + player.defense_point)))
                player.health_point = math.floor((player.health_point - damage_to_player))
                ui_text.action = "Ennemy deal "..damage_to_player.." damage to Player"
                delay_s(0.5) 
                my_turn = 1

            elseif player.health_point <= 0 then
                
            end
        end

        function ennemy_Special_Attack(dt) -- Special attack ennemie
            
            if player.health_point >= 1 and player.health_point <= player.max_health_point then

                damage_to_player = (ennemie.attack_point * (100/(100 + player.defense_point))) + 10
                player.health_point = math.floor((player.health_point - damage_to_player))
                ui_text.action = "Ennemy use special skill to deal "..damage_to_player.." damage to Player"
                delay_s(0.5) 
                my_turn = 1
        
            elseif player.health_point <= 0 then
                
            end
            
        end

        function ennemy_Critical_Attack(dt) -- Ennemy Critical Hit
            
            if player.health_point >= 1 and player.health_point <= player.max_health_point then

                damage_to_player = (ennemie.attack_point * (100/(100 + player.defense_point))) + 4
                player.health_point = math.floor((player.health_point - damage_to_player))
                ui_text.action = "Ennemy deal "..damage_to_player.." critical damage to Player"
                delay_s(0.5) 
                my_turn = 1
        
            elseif player.health_point <= 0 then
                
            end

        end

        function ennemy_Defend(dt) -- Ennemy Defend

            if ennemie.defense_point < ennemie.max_defense_point then

                if ennemie.defense_point + 10 < ennemie.max_defense_point then

                    ennemie.defense_point = math.floor((ennemie.defense_point + 10 ) )
                    ui_text.action = "Ennemy defence + 10"
                    delay_s(0.5) 
                    my_turn = 1

                elseif ennemie.defense_point + 10 >= ennemie.max_defense_point then
                    
                    ennemie.defense_point = ennemie.max_defense_point
                    ui_text.action = "Ennemy defence + 10 and is at max"
                    delay_s(0.5) 
                    my_turn = 1

                end
                
            elseif ennemie.defense_point > ennemie.max_defense_point then

                ennemie.defense_point = ennemie.max_defense_point
                ui_text.action = "Ennemy defence is at max"
    
            end
            
        end

        function ennemy_Rage(dt) -- Ennemy Rage to add ATK Power

            if ennemie.attack_point < ennemie.max_attack_point then
                if ennemie.attack_point + 5 < ennemie.max_attack_point then

                    ennemie.attack_point = math.floor((ennemie.attack_point + 10 ))
                    ui_text.action = "Ennemy use Rage to increase attack + 10"
                    delay_s(0.5) 
                    my_turn = 1

                elseif ennemie.attack_point + 5 > ennemie.max_attack_point then
                    
                    ennemie.attack_point = ennemie.max_attack_point
                    ennemie.health_point = math.floor((ennemie.health_point - 10 ))
                    ui_text.action = "Ennemy over use Rage and took 10 damage"
                    delay_s(0.5) 
                    my_turn = 1    

                end
            elseif ennemie.attack_point > ennemie.max_attack_point then

                ennemie.attack_point = ennemie.max_attack_point
                ui_text.action = "Ennemy at the max of ATK"
                delay_s(0.5) 
                my_turn = 1

            end
            
        end

        function ennemy_Regeneration(dt) -- Ennemy regenerate little health

            if ennemie.health_point < ennemie.max_health_point  then
                if ennemie.health_point + 100 < ennemie.max_health_point then

                    ennemie.health_point = math.floor( ((ennemie.health_point + 20)) )
                    ui_text.action = "Ennemy regenerate 100 HP"
                    delay_s(0.5) 
                    my_turn = 1

                elseif ennemie.health_point + 100 >= ennemie.max_health_point then
                   
                    ennemie.health_point = ennemie.max_health_point
                    ui_text.action = "Ennemy regenerate 100 HP"
                    delay_s(0.5) 
                    my_turn = 1

                end
            
            elseif ennemie.health_point >= ennemie.max_health_point then

                ennemie.health_point = ennemie.max_health_point
                ui_text.action = "Ennemy try to use regeneration with a full life"
                delay_s(0.5) 
                my_turn = 1

            end
            
        end

    ----------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
