--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"


--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

    function trophee_Init()
        
        battle_number = 1

        --Nombres pour Trophees
            trophee = {}
            trophee.kill_number = 0
            trophee.death_number = 0
            trophee.run_number = 0
            trophee.section_number = 0
            trophee.food_addict = 0
            trophee.lucky_man = 0
            trophee.swordman_slayer = 0
            trophee.spearman_slayer = 0
            trophee.gunner_slayer = 0
            trophee.cavalier_slayer = 0 
            trophee.legendary_slayer = 0
            trophee.emperor_slayer = 0
            trophee.mystic_slayer = 0

        -- ui Trophees
            ui_trophee = {}
            ui_trophee.trophee_1 = 0
            ui_trophee.trophee_2 = 0
            ui_trophee.trophee_3 = 0
            ui_trophee.trophee_4 = 0
            ui_trophee.trophee_5 = 0
            ui_trophee.trophee_6 = 0
            ui_trophee.trophee_7 = 0
            ui_trophee.trophee_8 = 0
            ui_trophee.trophee_9 = 0
            ui_trophee.trophee_10 = 0
            ui_trophee.trophee_11 = 0
            ui_trophee.trophee_12 = 0
            ui_trophee.trophee_13 = 0
        

        -- Icon Trophees
            ui_trophee.trophee_image_1 = love.graphics.newImage("assets/icons/trophies/death.jpg")
            ui_trophee.trophee_image_2 = love.graphics.newImage("assets/icons/trophies/death.jpg")
            ui_trophee.trophee_image_3 = love.graphics.newImage("assets/icons/trophies/death.jpg")
            ui_trophee.trophee_image_4 = love.graphics.newImage("assets/icons/trophies/airhorn.png")
            ui_trophee.trophee_image_5 = love.graphics.newImage("assets/icons/trophies/food.png")

            ui_trophee.trophee_image_6 = love.graphics.newImage("assets/icons/trophies/dice.png")
            ui_trophee.trophee_image_7 = love.graphics.newImage("assets/icons/trophies/sword.jpg")
            ui_trophee.trophee_image_8 = love.graphics.newImage("assets/icons/trophies/spear.jpg")
            ui_trophee.trophee_image_9 = love.graphics.newImage("assets/icons/trophies/gun.jpg")
            ui_trophee.trophee_image_10 = love.graphics.newImage("assets/icons/trophies/katana.jpg")
            
            ui_trophee.trophee_image_11 = love.graphics.newImage("assets/icons/trophies/star.jpg")
            ui_trophee.trophee_image_12 = love.graphics.newImage("assets/icons/trophies/double_star.jpg")
            ui_trophee.trophee_image_13 = love.graphics.newImage("assets/icons/trophies/double_star.jpg")
            


    end

    function trophee_Update()

        ui_trophee.trophee_1 = trophee.kill_number
        ui_trophee.trophee_2 = trophee.death_number
        ui_trophee.trophee_3 = trophee.run_number
        ui_trophee.trophee_4 = trophee.section_number
        ui_trophee.trophee_5 = trophee.food_addict
        ui_trophee.trophee_6 = trophee.lucky_man
        ui_trophee.trophee_7 = trophee.swordman_slayer
        ui_trophee.trophee_8 = trophee.spearman_slayer
        ui_trophee.trophee_9 = trophee.gunner_slayer
        ui_trophee.trophee_10 = trophee.cavalier_slayer
        ui_trophee.trophee_11 = trophee.legendary_slayer
        ui_trophee.trophee_12 = trophee.emperor_slayer
        ui_trophee.trophee_13 = trophee.mystic_slayer

    end

    function calcul_trophee_slayer() -- LES FONCTIONS DE CALCUL DE TROPHEE

        if choix_UI == 4 then
            
            trophee.kill_number = trophee.kill_number + 1

            if monster_choice >= 1 and monster_choice <= 5 or monster_choice >= 23 and monster_choice <= 26 then
                trophee.swordman_slayer = trophee.swordman_slayer + 1
            elseif monster_choice >= 6 and monster_choice <= 10 or monster_choice >= 27 and monster_choice <= 30 then
                trophee.spearman_slayer = trophee.spearman_slayer + 1
            elseif monster_choice >= 11 and monster_choice <= 14 or monster_choice >= 31 and monster_choice <= 34 then
                trophee.gunner_slayer = trophee.gunner_slayer + 1
            elseif monster_choice >= 19 and monster_choice <= 22 or monster_choice >= 43 and monster_choice <= 46 or monster_choice >= 51 and monster_choice <= 54 then
                trophee.cavalier_slayer = trophee.cavalier_slayer + 1
            elseif monster_choice >= 47 and monster_choice <= 78 then
                trophee.legendary_slayer = trophee.legendary_slayer + 1
            elseif monster_choice >= 79 and monster_choice <= 86 or monster_choice >= 91 and monster_choice <= 95 then
                trophee.mystic_slayer = trophee.mystic_slayer + 1
            elseif monster_choice >= 87 and monster_choice <= 90 or monster_choice >= 96 and monster_choice <= 100 then
                trophee.emperor_slayer = trophee.emperor_slayer + 1
            end

        elseif choix_UI == 5 then
            trophee.death_number = trophee.death_number + 1
        end
        
    end

    function trophee_Draw()

        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_main)
        love.graphics.print("TROPHIES", 10*tileSize, 8*tileSize)
        love.graphics.setFont(font_third)

        --IMAGE DES TROPHEE
        love.graphics.draw(ui_trophee.trophee_image_1, 12*tileSize, 14*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_2, 12*tileSize, 18*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_3, 12*tileSize, 22*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_4, 12*tileSize, 26*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_5, 12*tileSize, 30*tileSize)

        love.graphics.draw(ui_trophee.trophee_image_6, 26*tileSize, 14*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_7, 26*tileSize, 18*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_8, 26*tileSize, 22*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_9, 26*tileSize, 26*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_10, 26*tileSize, 30*tileSize)

        love.graphics.draw(ui_trophee.trophee_image_11, 40*tileSize, 14*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_12, 40*tileSize, 18*tileSize)
        love.graphics.draw(ui_trophee.trophee_image_13, 40*tileSize, 22*tileSize)

        --RECTANGLE DES TROPHEE
        love.graphics.rectangle("line", 12*tileSize, 14*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 12*tileSize, 18*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 12*tileSize, 22*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 12*tileSize, 26*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 12*tileSize, 30*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("line", 26*tileSize, 14*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 26*tileSize, 18*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 26*tileSize, 22*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 26*tileSize, 26*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 26*tileSize, 30*tileSize, 2*tileSize, 2*tileSize)

        love.graphics.rectangle("line", 40*tileSize, 14*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 40*tileSize, 18*tileSize, 2*tileSize, 2*tileSize)
        love.graphics.rectangle("line", 40*tileSize, 22*tileSize, 2*tileSize, 2*tileSize)

        --TITRE DES TROPHEE
        love.graphics.print(" KILLED WARRIORS", 14*tileSize, 14*tileSize)
        love.graphics.print(" NUMBER OF DEATHS", 14*tileSize, 18*tileSize)
        love.graphics.print(" RUN FROM BATTLE", 14*tileSize, 22*tileSize)
        love.graphics.print(" SECTION NUMBER", 14*tileSize, 26*tileSize)
        love.graphics.print(" FOOD ADDICT", 14*tileSize, 30*tileSize)

        love.graphics.print(" LUCKYMAN", 28*tileSize, 14*tileSize)
        love.graphics.print(" SWORDMAN SLAYER", 28*tileSize, 18*tileSize)
        love.graphics.print(" SPEARMAN SLAYER", 28*tileSize, 22*tileSize)
        love.graphics.print(" GUNMAN SLAYER", 28*tileSize, 26*tileSize)
        love.graphics.print(" HORSE UNIT SLAYER", 28*tileSize, 30*tileSize)

        love.graphics.print(" LEGEND KILLER", 42*tileSize, 14*tileSize)
        love.graphics.print(" EMPEROR KILLER", 42*tileSize, 18*tileSize)
        love.graphics.print(" MYSTIC KILLER", 42*tileSize, 22*tileSize)

        --VALEUR DES TROPHEE
        love.graphics.print(" "..ui_trophee.trophee_1, 14*tileSize, 15.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_2, 14*tileSize, 19.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_4, 14*tileSize, 23.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_3, 14*tileSize, 27.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_5, 14*tileSize, 31.2*tileSize)

        love.graphics.print(" "..ui_trophee.trophee_6, 28*tileSize, 15.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_7, 28*tileSize, 19.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_8, 28*tileSize, 23.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_9, 28*tileSize, 27.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_10, 28*tileSize, 31.2*tileSize)

        love.graphics.print(" "..ui_trophee.trophee_11, 42*tileSize, 15.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_12, 42*tileSize, 19.2*tileSize)
        love.graphics.print(" "..ui_trophee.trophee_13, 42*tileSize, 23.2*tileSize)

        --BOUTON BACK de la partie trophee
        love.graphics.setFont(font_second)
        love.graphics.print("BACK", 12.5*tileSize, 34.6*tileSize)
        love.graphics.rectangle("line", 12*tileSize, 34*tileSize, 5.5*tileSize, 2.5*tileSize)


    end

    function action_UI_Trophee(interface_choice,dt)

        if interface_choice == 6 and love.mouse.isDown(1) then

            -- Récupération de la position du curseur en pixels
            local x = love.mouse.getX()
            local y = love.mouse.getY()
            -- Conversion pixer vers cases de la grille
            mousePosX = math.floor((x/16)+1)
            mousePosY = math.floor((y/16)+1)
    
            if mousePosY >= 34 and mousePosY <= 37 and mousePosX >= 12 and mousePosX <= 18 then
                interface_choice = 1
            end
    
        end

        return interface_choice
    end
    ---------------------------------------------------------------------------------------------