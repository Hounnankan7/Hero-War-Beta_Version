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

        if mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 14 and mousePosX_1 <= 16 then -- 
    
            interface_state = "in_inventory" 

        end


    elseif choix_UI == 3 and my_turn == 2 then -- Tour de l'ennemi


    end

end