--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------

    function EnnemyCreation() --Fonction d'initialisation du perso du player

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
            
        end

        function ennemy_Special_Attack(dt) -- Special attack ennemie 
            
        end

        function ennemy_Critical_Attack(dt) -- Ennemy Critical Hit
            
        end

        function ennemy_Defend(dt) -- Ennemy Defend
            
        end

        function ennemy_Rage(dt) -- Ennemy Rage to add ATK Power
            
        end

        function ennemy_Regeneration(dt) -- Ennemy regenerate little health
            
        end

    ----------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
