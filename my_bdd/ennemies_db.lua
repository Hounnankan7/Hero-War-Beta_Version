

---LES VARIABLES---------------------------------------------------------------

    monster = {}
    monster.id = 0 -- Identification du monstre
    monster.name = "" -- Nom du monstre
    monster.image = love.graphics.newImage("my_bdd/monsters/Swordman.png")  -- Image du monstre
    monster.health_point = 0 -- Point de vie a un moment t du monstre
    monster.max_health_point = 0 -- Point de vie max du monstre
    monster.magic_point = 0 -- Point de magie du monstre
    monster.max_magic_point = 0 -- Point de magie a un moment t du monstre
    monster.attack_point = 0  monster.max_attack_point = 0 -- Point d'attaque du monstre
    monster.defense_point = 0  monster.max_defense_point = 0 -- Point de défense de base du monstre
    monster.exp_loot = 0 -- Expérience looter par le monstre


-------------------------------------------------------------------------------


---CREATION DES MONSTRES-------------------------------------------------------

    -- Fonction de creation des MONSTRES en se basant sur la valeur de random_monster
    function create_Monster(random_monster)

        ----------------------------------------------------------------------------
        -- random_monster varie entre 1 et 100 ==] pour 24 différent type de monstres
        -- Intervalle pour les monstres : 
        --Monstre 1 : Swordman = 
        --Monstre 2 : Spearman = 
        --Monstre 3 : Musketeer = 
        --Monstre 4 : Ninja = 
        --Monstre 5 : Cavalier = 
        --Monstre 6 : Swordman Master = 
        --Monstre 7 : Spearman Master = 
        --Monstre 8 : Musketeer Master = 
        --Monstre 9 : Ninja Master = 
        --Monstre 10 : Pirate = 
        --Monstre 11 : Elite Cavalier =
        --Monstre 12 : Tengu =
        --Monstre 13 : Dark HorseMan =
        --Monstre 14 : Jubei Yagyu =
        --Monstre 15 : Naoshige Nabeshima =
        --Monstre 16 : Musashi Miyamoto =
        --Monstre 17 : Motochika Chosokabe =
        --Monstre 18 : Momotaro =
        --Monstre 19 : Tengu Supreme =
        --Monstre 20 : Dragon Child =
        --Monstre 21 : Masanori Fukushima =
        --Monstre 22 : Oda Nobunaga =
        --Monstre 23 : Duster Sniper =
        --Monstre 24 : Otohime =
        -----------------------------------------------------------------------------
        

        if random_monster >= 1 and random_monster <= 5 then

            monster.id = 1
            monster.name = "Swordman"
            monster.image = love.graphics.newImage("my_bdd/monsters/Swordman.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 6 and random_monster <= 10 then

            monster.id = 6
            monster.name = "Spearman"
            monster.image = love.graphics.newImage("my_bdd/monsters/Spearman.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 11 and random_monster <= 14 then

            monster.id = 11
            monster.name = "Musketeer"
            monster.image = love.graphics.newImage("my_bdd/monsters/Musketeer.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 15 and random_monster <= 18 then

            monster.id = 15
            monster.name = "Ninja"
            monster.image = love.graphics.newImage("my_bdd/monsters/Ninja.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 19 and random_monster <= 22 then

            monster.id = 19
            monster.name = "Cavalier"
            monster.image = love.graphics.newImage("my_bdd/monsters/Cavalier.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 23 and random_monster <= 26 then

            monster.id = 23
            monster.name = "Swordman Master"
            monster.image = love.graphics.newImage("my_bdd/monsters/Swordman Master.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 27 and random_monster <= 30 then

            monster.id = 27
            monster.name = "Spearman Master"
            monster.image = love.graphics.newImage("my_bdd/monsters/Spearman Master.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 31 and random_monster <= 34 then

            monster.id = 31
            monster.name = "Musketeer Master"
            monster.image = love.graphics.newImage("my_bdd/monsters/Musketeer Master.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 35 and random_monster <= 38 then

            monster.id = 35
            monster.name = "Ninja Master"
            monster.image = love.graphics.newImage("my_bdd/monsters/Ninja Master.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 39 and random_monster <= 42 then

            monster.id = 39
            monster.name = "Pirate"
            monster.image = love.graphics.newImage("my_bdd/monsters/Pirate.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 43 and random_monster <= 46 then

            monster.id = 43
            monster.name = "Elite Cavalier"
            monster.image = love.graphics.newImage("my_bdd/monsters/Elite Cavalier.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 47 and random_monster <= 50 then

            monster.id = 47
            monster.name = "Tengu"
            monster.image = love.graphics.newImage("my_bdd/monsters/Tengu.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 51 and random_monster <= 54 then

            monster.id = 51
            monster.name = "Dark HorseMan"
            monster.image = love.graphics.newImage("my_bdd/monsters/Dark HorseMan.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 55 and random_monster <= 58 then

            monster.id = 55
            monster.name = "Jubei Yagyu"
            monster.image = love.graphics.newImage("my_bdd/monsters/Jubei Yagyu.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 59 and random_monster <= 62 then

            monster.id = 59
            monster.name = "Naoshige Nabeshima"
            monster.image = love.graphics.newImage("my_bdd/monsters/Naoshige Nabeshima.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 63 and random_monster <= 66 then

            monster.id = 63
            monster.name = "Musashi Miyamoto"
            monster.image = love.graphics.newImage("my_bdd/monsters/Musashi Miyamoto.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 67 and random_monster <= 70 then

            monster.id = 67
            monster.name = "Motochika Chosokabe"
            monster.image = love.graphics.newImage("my_bdd/monsters/Motochika Chosokabe.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 71 and random_monster <= 74 then

            monster.id = 71
            monster.name = "Momotaro"
            monster.image = love.graphics.newImage("my_bdd/monsters/Momotaro.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 75 and random_monster <= 78 then

            monster.id = 75
            monster.name = "Tengu Supreme"
            monster.image = love.graphics.newImage("my_bdd/monsters/Tengu Supreme.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 79 and random_monster <= 82 then

            monster.id = 79
            monster.name = "Dragon Child"
            monster.image = love.graphics.newImage("my_bdd/monsters/Dragon Child.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 83 and random_monster <= 86 then

            monster.id = 83
            monster.name = "Masanori Fukushima"
            monster.image = love.graphics.newImage("my_bdd/monsters/Masanori Fukushima.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 87 and random_monster <= 90 then

            monster.id = 87
            monster.name = "Oda Nobunaga"
            monster.image = love.graphics.newImage("my_bdd/monsters/Oda Nobunaga.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 91 and random_monster <= 95 then

            monster.id = 91
            monster.name = "Duster Sniper"
            monster.image = love.graphics.newImage("my_bdd/monsters/Duster Sniper.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        elseif random_monster >= 96 and random_monster <= 100 then

            monster.id = 96
            monster.name = "Otohime"
            monster.image = love.graphics.newImage("my_bdd/monsters/Otohime.png") 
            monster.health_point = 250
            monster.max_health_point = 250
            monster.magic_point = 100
            monster.max_magic_point = 100 
            monster.attack_point = 20  
            monster.max_attack_point = 20
            monster.defense_point = 10  
            monster.max_defense_point = 10
            monster.exp_loot = 100

        end
            

    end

-------------------------------------------------------------------------------