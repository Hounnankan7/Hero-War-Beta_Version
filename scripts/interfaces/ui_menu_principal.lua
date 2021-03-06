--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"


--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------


--MES FONCTIONS CREES------------------------------------------------------------------------

    function menuPrincipal_Init()

        ui_principal = {}
        ui_principal.title = "HERO WAR II"
        ui_principal.text_1 = "New Battle"
        ui_principal.text_2 = "Last Battle"
        ui_principal.text_3 = "Trophies"
        ui_principal.text_4 = "End Game"
        ui_principal.text_5 = "2022 - Created by Hounnankan7"

    end

    function draw_MenuPrincipal()

        love.graphics.setColor(1, 1, 1, 0.5)
        love.graphics.rectangle("fill", 16*tileSize, 17*tileSize, 25*tileSize, 3*tileSize)
        love.graphics.rectangle("fill", 16*tileSize, 21*tileSize, 25*tileSize, 3*tileSize)
        love.graphics.rectangle("fill", 16*tileSize, 25*tileSize, 25*tileSize, 3*tileSize)
        love.graphics.rectangle("fill", 16*tileSize, 29*tileSize, 25*tileSize, 3*tileSize)
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_main)
        love.graphics.print(ui_principal.title, 16*tileSize, 12*tileSize)
        love.graphics.setFont(font_second)
        love.graphics.print(ui_principal.text_1, 16.5*tileSize, 18*tileSize)
        love.graphics.print(ui_principal.text_2, 16.5*tileSize, 22*tileSize)
        love.graphics.print(ui_principal.text_3, 16.5*tileSize, 26*tileSize)
        love.graphics.print(ui_principal.text_4, 16.5*tileSize, 30*tileSize)
        love.graphics.print(ui_principal.text_5, 16*tileSize, 34*tileSize)
        
    end

    function action_UI_MenuPrincipal(interface_choice,dt) -- Fonction executer pour faire le choix sur le menu principal

        if interface_choice == 1 and love.mouse.isDown(1) then

            -- Récupération de la position du curseur en pixels
            local x = love.mouse.getX()
            local y = love.mouse.getY()
            -- Conversion pixer vers cases de la grille
            mousePosX = math.floor((x/16)+1)
            mousePosY = math.floor((y/16)+1)

            if mousePosY >= 17 and mousePosY <= 20 and mousePosX >= 16 and mousePosX <= 41 then -- Clique sur Nouvelle bataille
                
                love.filesystem.remove("saveData.ini")
                interface_choice = 2
                delay_s(1.1)

            elseif mousePosY >= 21 and mousePosY <= 24 and mousePosX >= 16 and mousePosX <= 41 then -- Clique sur Dernière bataille
                
                if love.filesystem.getInfo("saveData.ini") then

                    Load_Game()
                    interface_choice = 3
                    interface_state = "in_combat"
                    delay_s(0.9)
                else
            
                end

            elseif mousePosY >= 25 and mousePosY <= 28 and mousePosX >= 16 and mousePosX <= 41 then -- Clique sur Trophees

                interface_choice = 6
                delay_s(0.9)

            end
        end

        return interface_choice
    end

    function exitGame(interface_choice)
        if interface_choice == 1 and love.mouse.isDown(1) then

            -- Récupération de la position du curseur en pixels
            local x = love.mouse.getX()
            local y = love.mouse.getY()
            -- Conversion pixer vers cases de la grille
            mousePosX = math.floor((x/16)+1)
            mousePosY = math.floor((y/16)+1)
            if mousePosY >= 29 and mousePosY <= 32 and mousePosX >= 16 and mousePosX <= 41 then -- Clique sur Quitter le jeu
                    
                love.event.quit( 0 )

            end
        end
    end
---------------------------------------------------------------------------------------------
