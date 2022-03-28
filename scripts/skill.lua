--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "scripts/interfaces/ui_combat"
    require "scripts/player"

--LES VARIABLES------------------------------------------------------------------------------

    damage_to_player = 0

---------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------
--FONCTIONS D'UTILISATION DES SKILLS
    function player_Normal_Attack(dt) -- Fonction utilisation d'une attaque normale

        if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then

            trophee.lucky_man = trophee.lucky_man + 1

            damage_to_ennemy = (player.attack_point * (100/(100 + ennemie.defense_point)))
            ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
            ui_text.action = "Player deal "..damage_to_ennemy.." damage to Ennemy"
            delay_s(0.8)  
            my_turn = 2

        elseif ennemie.health_point <= 0 then

        end
        
    end

    function player_Use_Skill_1(dt, choix_character) -- Fonction d'utilisation du skill 1 

        if choix_character == 1 then
            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 15 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 15) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 15))
                    ui_text.action = "Player use "..ui_action.skill_1_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 15 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end
        
        elseif choix_character == 2 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 15 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 15) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 15))
                    ui_text.action = "Player use "..ui_action.skill_1_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 15 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 3 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 15 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 15) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 15))
                    ui_text.action = "Player use "..ui_action.skill_1_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 15 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 4 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 15 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 15) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 15))
                    ui_text.action = "Player use "..ui_action.skill_1_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 15 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 5 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 15 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 15) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 15))
                    ui_text.action = "Player use "..ui_action.skill_1_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 15 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 6 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 15 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 15) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 15))
                    ui_text.action = "Player use "..ui_action.skill_1_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 15 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end
   
        end
        
    end

    function player_Use_Skill_2(dt, choix_character) -- Fonction d'utilisation du skill 2

        if choix_character == 1 then
            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 30 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 18) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 30))
                    ui_text.action = "Player use "..ui_action.skill_2_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 30 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end
        
        elseif choix_character == 2 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 30 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 18) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 30))
                    ui_text.action = "Player use "..ui_action.skill_2_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 30 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 3 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 30 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 18) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 30))
                    ui_text.action = "Player use "..ui_action.skill_2_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 30 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 4 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 30 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 18) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 30))
                    ui_text.action = "Player use "..ui_action.skill_2_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 30 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 5 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 30 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 18) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 30))
                    ui_text.action = "Player use "..ui_action.skill_2_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 30 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 6 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 30 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 18) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 30))
                    ui_text.action = "Player use "..ui_action.skill_2_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 30 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end
   
        end
        
    end

    function player_Use_Skill_3(dt, choix_character) -- Fonction d'utilisation du skill 3

        if choix_character == 1 then
            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 100 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 20) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 100))
                    ui_text.action = "Player use "..ui_action.skill_3_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 100 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end
        
        elseif choix_character == 2 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 100 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 20) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 100))
                    ui_text.action = "Player use "..ui_action.skill_3_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 100 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 3 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 100 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 20) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 100))
                    ui_text.action = "Player use "..ui_action.skill_3_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 100 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 4 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 100 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 20) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 100))
                    ui_text.action = "Player use "..ui_action.skill_3_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 100 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 5 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 100 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 20) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 100))
                    ui_text.action = "Player use "..ui_action.skill_3_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 100 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 6 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 100 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 20) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 100))
                    ui_text.action = "Player use "..ui_action.skill_3_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 100 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end
   
        end
        
    end

    function player_Use_Skill_4(dt, choix_character) -- Fonction d'utilisation du skill 4

        if choix_character == 1 then
            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 150 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 24) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 150))
                    ui_text.action = "Player use "..ui_action.skill_4_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 150 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end
        
        elseif choix_character == 2 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 150 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 24) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 150))
                    ui_text.action = "Player use "..ui_action.skill_4_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 150 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 3 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 150 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 24) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 150))
                    ui_text.action = "Player use "..ui_action.skill_4_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 150 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 4 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 150 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 24) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 150))
                    ui_text.action = "Player use "..ui_action.skill_4_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 150 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 5 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 150 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 24) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 150))
                    ui_text.action = "Player use "..ui_action.skill_4_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 150 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end

        elseif choix_character == 6 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
                if player.magic_point >= 150 then -- Condition sur la possession des mp necessaire à l'atk

                    damage_to_ennemy = ((player.attack_point + 24) * (100/(100 + ennemie.defense_point)))
                    ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                    player.magic_point = math.floor((player.magic_point - 150))
                    ui_text.action = "Player use "..ui_action.skill_4_name.." to deal "..damage_to_ennemy.." damage to Ennemy"
                    delay_s(0.8)  
                    my_turn = 2
                    
                elseif player.magic_point < 150 then
                    ui_text.action = "Vous n'avez pas assez de TP pour cette attaque"
                end

            elseif ennemie.health_point <= 0 then
                
                
            end
   
        end
        
    end

    function player_Use_Defend(dt) -- Player utilise defense pour augmenter de 5 ca defense

        if player.defense_point < player.max_defense_point then

            if player.defense_point + 5 < player.max_defense_point then

                player.defense_point = math.floor((player.defense_point + 5))
                ui_text.action = "Player defence + 5"
                delay_s(0.5) 
                my_turn = 2

            elseif player.defense_point + 10 >= player.max_defense_point then

                player.defense_point = player.max_defense_point
                ui_text.action = "Player defence + 10 and is at max"
                delay_s(0.5) 
                my_turn = 2

            end

        elseif player.defense_point >= player.max_defense_point then

            player.defense_point = player.max_defense_point
            ui_text.action = "Player defence is already at max"
            
        end
        
    end
---------------------------------------------------------------------------------------------

function skill_Update()

    if choix_character == 1 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_4.png")
        ui_action.skill_1_name = "SLASH"
        ui_action.skill_2_name = "AURA SWORD"
        ui_action.skill_3_name = "SUPER AURA SWORD"
        ui_action.skill_4_name = "PRIME CIRCLE SWORD"
        ui_action.consoTP_1 = "-15TP"
        ui_action.consoTP_2 = "-30TP"
        ui_action.consoTP_3 = "-100TP"
        ui_action.consoTP_4 = "-150TP"
    elseif choix_character == 2 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_4.png")
        ui_action.skill_1_name = "SHADOW SPEAR"
        ui_action.skill_2_name = "SHADOW VEIL"
        ui_action.skill_3_name = "SHADOW BOMB"
        ui_action.skill_4_name = "SHADOW TORNADO"
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 3 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_4.png")
        ui_action.skill_1_name = ""
        ui_action.skill_2_name = ""
        ui_action.skill_3_name = ""
        ui_action.skill_4_name = ""
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 4 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_4.png")
        ui_action.skill_1_name = "WIND EXPLOSION"
        ui_action.skill_2_name = "TRIPPLE WIND EXPLOSION"
        ui_action.skill_3_name = "ELECTRO BOMB"
        ui_action.skill_4_name = "WIND TORNADO"
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 5 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_4.png")
        ui_action.skill_1_name = "SLASH"
        ui_action.skill_2_name = "AURA SLASH"
        ui_action.skill_3_name = "ELECTRIC SHOCK"
        ui_action.skill_4_name = "ELECTRO SLASH"
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 6 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_4.png")
        ui_action.skill_1_name = "FIRE FIELD"
        ui_action.skill_2_name = "METEOR"
        ui_action.skill_3_name = "FIRE BOOST"
        ui_action.skill_4_name = "HELL FIRE"
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    end
    
end

function draw_Skill()

    love.graphics.setColor(1, 1, 1, 0.65)
    love.graphics.rectangle("fill", 40*tileSize, 27.5*tileSize, 16*tileSize, 12*tileSize)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", 40.5*tileSize, 28*tileSize, 15*tileSize, 32)
    love.graphics.rectangle("fill", 40.5*tileSize, 31*tileSize, 15*tileSize, 32)
    love.graphics.rectangle("fill", 40.5*tileSize, 34*tileSize, 15*tileSize, 32)
    love.graphics.rectangle("fill", 40.5*tileSize, 37*tileSize, 15*tileSize, 32)

    love.graphics.draw(ui_action.skill_1, 40.5*tileSize, 28*tileSize)
    love.graphics.draw(ui_action.skill_2, 40.5*tileSize, 31*tileSize)
    love.graphics.draw(ui_action.skill_3, 40.5*tileSize, 34*tileSize)
    love.graphics.draw(ui_action.skill_4, 40.5*tileSize, 37*tileSize)
    love.graphics.setColor(0, 0, 0)
    love.graphics.setFont(font_quard)
    love.graphics.print(ui_action.skill_1_name, 43*tileSize, 28.4*tileSize)
    love.graphics.print(ui_action.skill_2_name, 43*tileSize, 31.4*tileSize)
    love.graphics.print(ui_action.skill_3_name, 43*tileSize, 34.4*tileSize)
    love.graphics.print(ui_action.skill_4_name, 43*tileSize, 37.4*tileSize)

    love.graphics.print(ui_action.consoTP_1, 43*tileSize, 29*tileSize)
    love.graphics.print(ui_action.consoTP_2, 43*tileSize, 32*tileSize)
    love.graphics.print(ui_action.consoTP_3, 43*tileSize, 35*tileSize)
    love.graphics.print(ui_action.consoTP_4, 43*tileSize, 38*tileSize)

    love.graphics.setColor(1, 1, 1)

end