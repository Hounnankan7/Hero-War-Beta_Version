--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"
    require "scripts/skill"



--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function Ui_Player_Selection_Init ()
        
        ui_player_selection = {}

        ui_player_selection.image_1 = love.graphics.newImage("my_bdd/characters/Swordman.png")
        ui_player_selection.character_name_1 = "Motoyasu Matsudaira"
        ui_player_selection.character_class_1 = "Class : ".."Swordman"
        ui_player_selection.character_hp_1 = "HP : ".."100"
        ui_player_selection.character_mp_1 = "TP : ".."30"
        ui_player_selection.character_atk_1 = "ATK : ".."50"
        ui_player_selection.character_def_1 = "DEF : ".."40"
        ui_player_selection.character_description_1 = "Focus on ATK, DEF"
        ui_player_selection.character_evolution_mode_1 = "Easy to level UP"

        ui_player_selection.image_2 = love.graphics.newImage("my_bdd/characters/Spearman.png")
        ui_player_selection.character_name_2 = "Matabei Goto"
        ui_player_selection.character_class_2 = "Class : ".."Spearman"
        ui_player_selection.character_hp_2 = "HP : ".."100"
        ui_player_selection.character_mp_2 = "TP : ".."30"
        ui_player_selection.character_atk_2 = "ATK : ".."45"
        ui_player_selection.character_def_2 = "DEF : ".."55"
        ui_player_selection.character_description_2 = "Focus on DEF, ATK"
        ui_player_selection.character_evolution_mode_2 = "Easy to level UP"

        ui_player_selection.image_3 = love.graphics.newImage("my_bdd/characters/Gunner.png")
        ui_player_selection.character_name_3 = "Takahisa Shimazu"
        ui_player_selection.character_class_3 = "Class : ".."Gunner"
        ui_player_selection.character_hp_3 = "HP : ".."100"
        ui_player_selection.character_mp_3 = "TP : ".."55"
        ui_player_selection.character_atk_3 = "ATK : ".."30"
        ui_player_selection.character_def_3 = "DEF : ".."40"
        ui_player_selection.character_description_3 = "Focus on DEF, TP"
        ui_player_selection.character_evolution_mode_3 = "Easy to level UP"

        ui_player_selection.image_4 = love.graphics.newImage("my_bdd/characters/Ninja.png")
        ui_player_selection.character_name_4 = "Kotaro Fuma"
        ui_player_selection.character_class_4 = "Class : ".."Ninja"
        ui_player_selection.character_hp_4 = "HP : ".."100"
        ui_player_selection.character_mp_4 = "TP : ".."60"
        ui_player_selection.character_atk_4 = "ATK : ".."40"
        ui_player_selection.character_def_4 = "DEF : ".."40"
        ui_player_selection.character_description_4 = "Focus on ATK, TP"
        ui_player_selection.character_evolution_mode_4 = "Hard to level UP"

        ui_player_selection.image_5 = love.graphics.newImage("my_bdd/characters/Samurai.png")
        ui_player_selection.character_name_5 = "Masamune Date"
        ui_player_selection.character_class_5 = "Class : ".."Samurai"
        ui_player_selection.character_hp_5 = "HP : ".."100"
        ui_player_selection.character_mp_5 = "TP : ".."40"
        ui_player_selection.character_atk_5 = "ATK : ".."50"
        ui_player_selection.character_def_5 = "DEF : ".."50"
        ui_player_selection.character_description_5 = "Focus on ATK, TP"
        ui_player_selection.character_evolution_mode_5 = "Hard to level UP"

        ui_player_selection.image_6 = love.graphics.newImage("my_bdd/characters/Spiritualist.png")
        ui_player_selection.character_name_6 = "Nankobo Tenkai"
        ui_player_selection.character_class_6 = "Class : ".."Spiritualist"
        ui_player_selection.character_hp_6 = "HP : ".."100"
        ui_player_selection.character_mp_6 = "TP : ".."60"
        ui_player_selection.character_atk_6 = "ATK : ".."25"
        ui_player_selection.character_def_6 = "DEF : ".."40"
        ui_player_selection.character_description_6 = "Focus on DEF, TP"
        ui_player_selection.character_evolution_mode_6 = "Hard to level UP"


    end

    function draw_Ui_Player_Selection ()

        love.graphics.setFont(font_second)
        love.graphics.print("CHOOSE YOUR CHARACTER", 19*tileSize, 4*tileSize)
        love.graphics.setFont(font_quard)
        love.graphics.print("(Select in the rectangle of your choosen character)", 19.5*tileSize, 6*tileSize)

        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 3*tileSize, 8*tileSize, 18*tileSize, 14*tileSize)
        love.graphics.rectangle("line", 23*tileSize, 8*tileSize, 18*tileSize, 14*tileSize)
        love.graphics.rectangle("line", 43*tileSize, 8*tileSize, 18*tileSize, 14*tileSize)

        love.graphics.rectangle("line", 3*tileSize, 24*tileSize, 18*tileSize, 14*tileSize)
        love.graphics.rectangle("line", 23*tileSize, 24*tileSize, 18*tileSize, 14*tileSize)
        love.graphics.rectangle("line", 43*tileSize, 24*tileSize, 18*tileSize, 14*tileSize)

        --DESSIN DES CHARACTERS OU CHOISIR
            --1rst character
            love.graphics.draw(ui_player_selection.image_1, 3*tileSize, 8.2*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_1, 10.5*tileSize, 9*tileSize)
            love.graphics.print(ui_player_selection.character_class_1, 10.5*tileSize, 11*tileSize)
            love.graphics.print(ui_player_selection.character_hp_1, 10.5*tileSize, 13*tileSize)
            love.graphics.print(ui_player_selection.character_mp_1, 10.5*tileSize, 14*tileSize)
            love.graphics.print(ui_player_selection.character_atk_1, 10.5*tileSize, 15*tileSize)
            love.graphics.print(ui_player_selection.character_def_1, 10.5*tileSize, 16*tileSize)
            love.graphics.print(ui_player_selection.character_description_1, 10.5*tileSize, 17*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_1, 10.5*tileSize, 18*tileSize)

            --2nd character
            love.graphics.draw(ui_player_selection.image_2, 23*tileSize, 8.2*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_2, 30.7*tileSize, 9*tileSize)
            love.graphics.print(ui_player_selection.character_class_2, 30.7*tileSize, 11*tileSize)
            love.graphics.print(ui_player_selection.character_hp_2, 30.7*tileSize, 13*tileSize)
            love.graphics.print(ui_player_selection.character_mp_2, 30.7*tileSize, 14*tileSize)
            love.graphics.print(ui_player_selection.character_atk_2, 30.7*tileSize, 15*tileSize)
            love.graphics.print(ui_player_selection.character_def_2, 30.7*tileSize, 16*tileSize)
            love.graphics.print(ui_player_selection.character_description_2, 30.7*tileSize, 17*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_2, 30.7*tileSize, 18*tileSize)

            --3dr character
            love.graphics.draw(ui_player_selection.image_3, 43*tileSize, 8.2*tileSize, 0, 1.3)
            love.graphics.print(ui_player_selection.character_name_3, 51*tileSize, 9*tileSize)
            love.graphics.print(ui_player_selection.character_class_3, 51*tileSize, 11*tileSize)
            love.graphics.print(ui_player_selection.character_hp_3, 51*tileSize, 13*tileSize)
            love.graphics.print(ui_player_selection.character_mp_3, 51*tileSize, 14*tileSize)
            love.graphics.print(ui_player_selection.character_atk_3, 51*tileSize, 15*tileSize)
            love.graphics.print(ui_player_selection.character_def_3, 51*tileSize, 16*tileSize)
            love.graphics.print(ui_player_selection.character_description_3, 51*tileSize, 17*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_3, 51*tileSize, 18*tileSize)

            --4th character
            love.graphics.draw(ui_player_selection.image_4, 3*tileSize, 24.2*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_4, 11.5*tileSize, 25*tileSize)
            love.graphics.print(ui_player_selection.character_class_4, 11.5*tileSize, 27*tileSize)
            love.graphics.print(ui_player_selection.character_hp_4, 11.5*tileSize, 29*tileSize)
            love.graphics.print(ui_player_selection.character_mp_4, 11.5*tileSize, 30*tileSize)
            love.graphics.print(ui_player_selection.character_atk_4, 11.5*tileSize, 31*tileSize)
            love.graphics.print(ui_player_selection.character_def_4, 11.5*tileSize, 32*tileSize)
            love.graphics.print(ui_player_selection.character_description_4, 11.5*tileSize, 33*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_4, 11.5*tileSize, 34*tileSize)

            --5th character
            love.graphics.draw(ui_player_selection.image_5, 23*tileSize, 24.2*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_5, 32.7*tileSize, 25*tileSize)
            love.graphics.print(ui_player_selection.character_class_5, 32.7*tileSize, 27*tileSize)
            love.graphics.print(ui_player_selection.character_hp_5, 32.7*tileSize, 29*tileSize)
            love.graphics.print(ui_player_selection.character_mp_5, 32.7*tileSize, 30*tileSize)
            love.graphics.print(ui_player_selection.character_atk_5, 32.7*tileSize, 31*tileSize)
            love.graphics.print(ui_player_selection.character_def_5, 32.7*tileSize, 32*tileSize)
            love.graphics.print(ui_player_selection.character_description_5, 32.7*tileSize, 33*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_5, 32.7*tileSize, 34*tileSize)

            --6th character
            love.graphics.draw(ui_player_selection.image_6, 43*tileSize, 24.2*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_6, 51*tileSize, 25*tileSize)
            love.graphics.print(ui_player_selection.character_class_6, 51*tileSize, 27*tileSize)
            love.graphics.print(ui_player_selection.character_hp_6, 51*tileSize, 29*tileSize)
            love.graphics.print(ui_player_selection.character_mp_6, 51*tileSize, 30*tileSize)
            love.graphics.print(ui_player_selection.character_atk_6, 51*tileSize, 31*tileSize)
            love.graphics.print(ui_player_selection.character_def_6, 51*tileSize, 32*tileSize)
            love.graphics.print(ui_player_selection.character_description_6, 51*tileSize, 33*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_6, 51*tileSize, 34*tileSize)


        --BOUTON BACK de la partie character selection
        love.graphics.setFont(font_second)
        love.graphics.print("BACK", 3.4*tileSize, 40.6*tileSize)
        love.graphics.rectangle("line", 3*tileSize, 40*tileSize, 5.5*tileSize, 2.5*tileSize)

    end


    function action_UI_Player_Selection (interface_choice, dt)


        if interface_choice == 2 and love.mouse.isDown(1) then

            -- Récupération de la position du curseur en pixels
            local x = love.mouse.getX()
            local y = love.mouse.getY()
            -- Conversion pixer vers cases de la grille
            mousePosX = math.floor((x/16)+1)
            mousePosY = math.floor((y/16)+1)

            battle_number = 1
            trophee.section_number = trophee.section_number + 1

            if mousePosY >= 8 and mousePosY <= 22 and mousePosX >= 3 and mousePosX <= 21 then

                choix_character = 1
                PlayerCreation()
                EnnemyCreation()
                interface_state = "in_combat"
                skill_Update()
                interface_choice = 3
                delay_s(0.9)

            elseif mousePosY >= 8 and mousePosY <= 22 and mousePosX >= 23 and mousePosX <= 41 then

                choix_character = 2
                PlayerCreation()
                EnnemyCreation()
                interface_state = "in_combat"
                skill_Update()
                interface_choice = 3
                delay_s(0.9)

            elseif mousePosY >= 8 and mousePosY <= 22 and mousePosX >= 43 and mousePosX <= 61 then

                choix_character = 3
                PlayerCreation()
                EnnemyCreation()
                interface_state = "in_combat"
                skill_Update()
                interface_choice = 3
                delay_s(0.9)

            elseif mousePosY >= 24 and mousePosY <= 38 and mousePosX >= 3 and mousePosX <= 21 then

                choix_character = 4
                PlayerCreation()
                EnnemyCreation()
                interface_state = "in_combat"
                skill_Update()
                interface_choice = 3
                delay_s(0.9)

            elseif mousePosY >= 24 and mousePosY <= 38 and mousePosX >= 23 and mousePosX <= 41 then

                choix_character = 5
                PlayerCreation()
                EnnemyCreation()
                interface_state = "in_combat"
                skill_Update()
                interface_choice = 3
                delay_s(0.9)

            elseif mousePosY >= 24 and mousePosY <= 38 and mousePosX >= 43 and mousePosX <= 61 then

                choix_character = 6
                PlayerCreation()
                EnnemyCreation()
                interface_state = "in_combat"
                skill_Update()
                interface_choice = 3
                delay_s(0.9)
        
            elseif mousePosY >= 40 and mousePosY <= 43 and mousePosX >= 3 and mousePosX <= 9 then
                interface_choice = 1
                delay_s(0.5)
            end
    
        end

        return interface_choice   
    end

    
---------------------------------------------------------------------------------------------