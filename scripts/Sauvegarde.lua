--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/ennemies_db"
    LIP = require "library/LIP"



--LES VARIABLES------------------------------------------------------------------------------


load_Data = {}
---------------------------------------------------------------------------------------------


function Save_Game()

    save_Data = {

        -- PLAYER
        Player = 
        {
            choix_character,
            player.id,
            player.class,
            player.name,
            player.liens,
            player.image,
            player.max_health_point,
            player.health_point,
            player.magic_point,
            player.max_magic_point,
            player.attack_point,
            player.max_attack_point,
            player.defense_point,
            player.max_defense_point,
            player.level ,
            player.max_level,
            player.exp_actuel,
            player.exp_next_level,
        },

        -- MONSTER
        Monster =
        {
            monster_choice,
            ennemie.id,
            ennemie.image,
            ennemie.name,
            ennemie.health_point,
            ennemie.max_health_point,
            ennemie.magic_point,
            ennemie.max_magic_point,
            ennemie.attack_point,
            ennemie.max_attack_point,
            ennemie.defense_point,
            ennemie.max_defense_point,
            ennemie.exp_loot,
        },
        

    }
    
    -- Data saving
    love.filesystem.remove("saveData.ini")
    LIP.save('saveData.ini', save_Data)
    
end

function Load_Game()  

    load_Data = LIP.load('saveData.ini')

    -- Player Load
    choix_character = load_Data.Player[1]
    PlayerCreation(choix_character)
    player.max_health_point = load_Data.Player[7]
    player.health_point = load_Data.Player[8]
    player.magic_point = load_Data.Player[9]
    player.max_magic_point = load_Data.Player[10]
    player.attack_point = load_Data.Player[11]
    player.max_attack_point = load_Data.Player[12]
    player.defense_point = load_Data.Player[13]
    player.max_defense_point = load_Data.Player[14]
    player.level = load_Data.Player[15]
    player.max_level = load_Data.Player[16]
    player.exp_actuel = load_Data.Player[17]
    player.exp_next_level = load_Data.Player[18]
    
    print(choix_character)
    print(player.health_point)

    -- Ennemy Load
    monster_choice = load_Data.Monster[2]
    save_ennemy_Creation(load_Data.Monster[2])
    ennemie.health_point = load_Data.Monster[5]
    ennemie.max_health_point = load_Data.Monster[6]
    ennemie.magic_point = load_Data.Monster[7]
    ennemie.max_magic_point = load_Data.Monster[8]
    ennemie.attack_point = load_Data.Monster[9]
    ennemie.max_attack_point = load_Data.Monster[10]
    ennemie.defense_point = load_Data.Monster[11]
    ennemie.max_defense_point = load_Data.Monster[12]
    ennemie.exp_loot = load_Data.Monster[13]

    print(monster_choice)
    print(ennemie.health_point)
    
end


function Reload_All_Game()


    
end