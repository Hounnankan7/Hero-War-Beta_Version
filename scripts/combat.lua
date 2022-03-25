--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/interfaces/ui_combat"
    require "scripts/player"
    require "scripts/ennemy"
    require "scripts/inventaire"
    require "scripts/interfaces/ui_victory"


--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

function EnCombat(dt) -- Function exécuter pendant le combat

    if choix_UI == 3 and my_turn == 1 and interface_state == "in_combat" and love.mouse.isDown(1) then -- Tour Joueur

        -- Récupération de la position du curseur en pixels
        local i = love.mouse.getX()
        local j = love.mouse.getY()
        -- Conversion pixer vers cases de la grille
        mousePosX_1 = math.floor((i/16)+1)
        mousePosY_1 = math.floor((j/16)+1)

        if mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 36 and mousePosX_1 <= 38 then -- Player normal Attaque
            
        elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 40 and mousePosX_1 <= 42 then -- Skill Button

            interface_state = "in_skill"
            delay_s(0.8)

        elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 44 and mousePosX_1 <= 46 then -- Player Defend

        elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 48 and mousePosX_1 <= 50 then -- Player Run

            choix_UI = 1 -- Retour vers l'écran principal avec perte de la progression

        elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 14 and mousePosX_1 <= 16 then -- Appui sur HP+

            interface_state = "in_inventory"
            delay_s(0.8)
            
        elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 18 and mousePosX_1 <= 20 then -- Appui sur TP+
    
            interface_state = "in_inventory"
            delay_s(0.8)

        end

    elseif choix_UI == 3 and my_turn == 1 and interface_state == "in_inventory" and love.mouse.isDown(1) then

        -- Récupération de la position du curseur en pixels
        local i = love.mouse.getX()
        local j = love.mouse.getY()
        -- Conversion pixer vers cases de la grille
        mousePosX_1 = math.floor((i/16)+1)
        mousePosY_1 = math.floor((j/16)+1)

        if mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 14 and mousePosX_1 <= 16 then -- 
    
            interface_state = "in_combat"
            delay_s(0.8)
            
        elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 18 and mousePosX_1 <= 20 then -- 
    
            interface_state = "in_combat"
            delay_s(0.8)

        end



    elseif choix_UI == 3 and my_turn == 2 then -- Tour de l'ennemi


    end

end