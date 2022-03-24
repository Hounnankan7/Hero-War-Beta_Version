--LES VARIABLES------------------------------------------------------------------------------

    character = {}
    character.id = 0 
    character.class = ""
    character.name = ""
    character.image = ""
    character.max_health_point = 0
    character.magic_point = 0
    character.attack_point = 0
    character.max_attack_point = 0
    character.defense_point = 0
    character.max_defense_point = 0
    character.level = 0
    character.max_level = 0
    character.exp_actuel = 0
    character.exp_next_level = 0

---------------------------------------------------------------------------------------------

--STATS/CLASSE---------------------------------------------------------
    
    -------------------ATK----DEF----MAG------LVL SYSTEM-----
    -- SWORDMAN         +      0      -     Easy to level
    -- SPEARMAN         0      +      -     Easy to level
    -- GUNNER           -      0      +     Easy to level
    -- NINJA            +      0      +     Hard to level
    -- SAMOURAI         +      +      0     Hard to level
    -- SPIRITUALIST     0      +      +     Hard to level

    -- NB : + point fort, - point faible, 0 point sans modif

------------------------------------------------------------------------

--CREATION DES CHARACTERS PLAYEABLE ----------------------------------------------------------

    function CharacterSelection (db_character_choice) -- Fonction de choix du character du joueur en fonction de son choix en fonction de la valeur de db_character_choice
    
        --Les constantes de calcul
        const_1 = 70 --cnst pour level up
        const_2 = 120 --cnst pour level up
        const_3 = 400 --cnst pour level up

        if db_character_choice == 1 then -- Choix du SWORDMAN
        
            character.id = 1 
            character.class = "Swordman"
            character.name = "Motoyasu Matsudaira"
            character.image = love.graphics.newImage("characters/Swordman.png")
            character.max_health_point = 80
            character.magic_point = 30
            character.attack_point = 50
            character.max_attack_point = 0
            character.defense_point = 40
            character.max_defense_point = 0
            character.level = 1
            character.max_level = 100
            character.exp_actuel = 0
            character.exp_next_level = math.floor( (const_2 * math.sqrt(character.level)) + const_1  )
    

        elseif db_character_choice == 2 then --Choix du SPEARMAN

            character.id = 2 
            character.class = "Spearman"
            character.name = "Matabei Goto"
            character.image = love.graphics.newImage("characters/Spearman.png")
            character.max_health_point = 70
            character.magic_point = 30
            character.attack_point = 45
            character.max_attack_point = 0
            character.defense_point = 55
            character.max_defense_point = 0
            character.level = 1
            character.max_level = 100
            character.exp_actuel = 0
            character.exp_next_level = math.floor( (const_2 * math.sqrt(character.level)) + const_1  )


        elseif db_character_choice == 3 then -- Choix du GUNNER

            character.id = 3 
            character.class = "Gunner"
            character.name = "Takahisa Shimazu"
            character.image = love.graphics.newImage("characters/Gunner.png")
            character.max_health_point = 75
            character.magic_point = 55
            character.attack_point = 30
            character.max_attack_point = 0
            character.defense_point = 40
            character.max_defense_point = 0
            character.level = 1
            character.max_level = 100
            character.exp_actuel = 0
            character.exp_next_level = math.floor( (const_2 * math.sqrt(character.level)) + const_1  )
    

        elseif db_character_choice == 4 then -- Choix du NINJA

            character.id = 4 
            character.class = "Ninja"
            character.name = "Kotaro Fuma"
            character.image = love.graphics.newImage("characters/Ninja.png")
            character.max_health_point = 60
            character.magic_point = 60
            character.attack_point = 40
            character.max_attack_point = 0
            character.defense_point = 40
            character.max_defense_point = 0
            character.level = 1
            character.max_level = 100
            character.exp_actuel = 0
            character.exp_next_level = math.floor( (const_2 * math.sqrt(character.level)) + const_3  )


        elseif db_character_choice == 5 then -- Choix du SAMOURAI

            character.id = 5 
            character.class = "Samourai"
            character.name = "Masamune Date"
            character.image = love.graphics.newImage("characters/Samourai.png")
            character.max_health_point = 60
            character.magic_point = 40
            character.attack_point = 50
            character.max_attack_point = 0
            character.defense_point = 50
            character.max_defense_point = 0
            character.level = 1
            character.max_level = 100
            character.exp_actuel = 0
            character.exp_next_level = math.floor( (const_2 * math.sqrt(character.level)) + const_3  )


        elseif db_character_choice == 6 then -- Choix du SPIRITUALIST

            character.id = 6 
            character.class = "Spiritualist"
            character.name = "Nankobo Tenkai"
            character.image = love.graphics.newImage("characters/Spiritualist.png")
            character.max_health_point = 60
            character.magic_point = 65
            character.attack_point = 35
            character.max_attack_point = 0
            character.defense_point = 40
            character.max_defense_point = 0
            character.level = 1
            character.max_level = 100
            character.exp_actuel = 0
            character.exp_next_level = math.floor( (const_2 * math.sqrt(character.level)) + const_3  )


        end
    
    end

---------------------------------------------------------------------------------------------
