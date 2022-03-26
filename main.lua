--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/ui_all"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"
    require "scripts/player"
    require "scripts/ennemy"
    require "scripts/inventaire"
    require "scripts/combat"
    require "scripts/skill"
    require "math"


----------------------------------------------------

--LES FONCTIONS PROPRES A LOVE2D-------------------------------------------------------------

    function love.load(...) --Fonction d'initialisation des éléments

        choix_UI = 1 --Choix interface
        interface_state = "" -- State pour manipuler l'inventaire et les skills

         -- var pour le tour par tour du combat
         i = 1
         j = 2
         my_turn = 1
         --randomNumber(i, j)
         ----------------------------------------


        -- Creation du player par défaut en arrière plan
        choix_character = 1
        PlayerCreation()
        ----------------------


        --Creation de l'ennemy par défaut en arrière plan
        a = 1
        b = 100
        monster_choice = randomNumber(a, b)
        EnnemyCreation()
        --var choix d'action de l'ennemy---
        c = 1
        d = 8
        action_choice = 1
        ----------------------
        --------------------------------------------------

        inventory_Init()


        interface_init() -- Initialisation des menus

    end


    function love.update(dt) --Fonction LOve2D en execution tout le temps

        exitGame(choix_UI)

        choix_UI = manipulationInterface(choix_UI, dt) -- Réaction en fonction des boutons cliqués

        inventory_Update(dt)

        ui_Combat_Update()

        EnCombat(dt)

    end


    function love.draw() --Fonction Love2D pour dessiner à l'écran

        if choix_UI == 1 then -- Menu principal
            draw_MenuPrincipal()
        elseif choix_UI == 2  then -- Interface de choix Character
            draw_Ui_Player_Selection()
        elseif choix_UI == 3 and interface_state == "in_combat"  then -- Interface de combat simple
            draw_Ui_Combat()
        elseif choix_UI == 3 and interface_state == "in_inventory"  then -- Interface de combat + affichage inventaire
            draw_Ui_Combat()
            draw_Inventory()
        elseif choix_UI == 3 and interface_state == "in_skill"  then -- Interface de combat + affichage skill
            draw_Ui_Combat()
            draw_Skill()
        elseif choix_UI == 4 then -- Interface Victoire
            draw_Ui_Victory()
        elseif choix_UI == 5 then -- Interface Defaite
            draw_Ui_Defeat()
        elseif choix_UI == 6 then -- Interface Trophees
            trophee_Draw()
        end

    end

---------------------------------------------------------------------------------------------
