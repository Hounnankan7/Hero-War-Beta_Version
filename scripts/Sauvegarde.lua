--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/ennemies_db"


--LES VARIABLES------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------


function Save_Game()

    save_Data = {}

    -- Player sauvegarde
    save_Data.player = {
        
        character = choix_character,
        health_point = player.health_point,
        max_health_point = player.max_health_point,
        magic_point = player.magic_point,
        max_magic_point = player.max_magic_point,
        attack_point = player.attack_point,
        max_attack_point = player.max_attack_point,
        defense_point = player.defense_point,
        max_defense_point = player.max_defense_point,
        level = player.level,
        max_level = player.max_level,
        exp_actuel = player.exp_actuel,
        exp_next_level = player.exp_next_level

    }

    --Ennemy sauvegarde
    save_Data.ennemie = {

        monster = monster_choice,
        ennemie_health_point = ennemie.health_point,
        ennemie_max_health_point = ennemie.max_health_point,
        ennemie_magic_point = ennemie.magic_point,
        ennemie_max_magic_point = ennemie.max_magic_point,
        ennemie_attack_point = ennemie.attack_point,
        ennemie_max_attack_point = ennemie.max_attack_point,
        ennemie_defense_point = ennemie.defense_point,
        ennemie_max_defense_point = ennemie.max_defense_point,

    }

    --Inventaire sauvegarde
    save_Data.inventory = {

        item_hp20 = nbr_item.hp20,
        item_hp200 = nbr_item.hp200,
        item_hp300 = nbr_item.hp300,
        item_hp500 = nbr_item.hp500,
        item_mp20 = nbr_item.mp20,
        item_mp150 = nbr_item.mp150,
        item_mp200 = nbr_item.mp200,
        item_mp250 = nbr_item.mp250,
        item_mp300 = nbr_item.mp300,
        item_stone = nbr_item.stone,
        item_gift = nbr_item.gift

    }

    serialized = lume.serialize(save_Data)
    love.filesystem.write("sauvegarde.txt", serialized)
    print(serialized)
    
end

function Load_Game()  

    file = love.filesystem.read("sauvegarde.txt")
    save_Data = lume.deserialize(file)

    --Load Player
    choix_character = save_Data.player.character
    PlayerCreation(choix_character)
    player.health_point = save_Data.player.health_point
    player.max_health_point = save_Data.player.max_health_point
    player.magic_point = save_Data.player.magic_point
    player.max_magic_point = save_Data.player.max_magic_point
    player.attack_point = save_Data.player.attack_point
    player.max_attack_point = save_Data.player.max_attack_point
    player.defense_point = save_Data.player.defense_point
    player.max_defense_point = save_Data.player.max_defense_point
    player.level = save_Data.player.level
    player.max_level = save_Data.player.max_level
    player.exp_actuel = save_Data.player.exp_actuel
    player.exp_next_level = save_Data.player.exp_next_level


    --Load Ennemie
    monster_choice = save_Data.ennemie.monster
    create_Monster(monster_choice)
    ennemie.health_point = save_Data.ennemie.ennemie_health_point
    ennemie.max_health_point = save_Data.ennemie.ennemie_max_health_point
    ennemie.magic_point = save_Data.ennemie.ennemie_magic_point
    ennemie.max_magic_point = save_Data.ennemie.ennemie_max_magic_point
    ennemie.attack_point = save_Data.ennemie.ennemie_attack_point
    ennemie.max_attack_point = save_Data.ennemie.ennemie_max_attack_point
    ennemie.defense_point = save_Data.ennemie.ennemie_defense_point
    ennemie.max_defense_point = save_Data.ennemie.ennemie_max_defense_point

    --Load Inventaire
    nbr_item.hp20 = save_Data.inventory.item_hp20 
    nbr_item.hp200 = save_Data.inventory.item_hp200
    nbr_item.hp300 = save_Data.inventory.item_hp300
    nbr_item.hp500 = save_Data.inventory.item_hp500
    nbr_item.mp20 = save_Data.inventory.item_mp20
    nbr_item.mp150 = save_Data.inventory.item_mp150
    nbr_item.mp250 = save_Data.inventory.item_mp250
    nbr_item.mp300 = save_Data.inventory.item_mp300
    nbr_item.stone = save_Data.inventory.item_stone
    nbr_item.gift = save_Data.inventory.item_gift
    
end

function is_Save_Exist()
    if love.filesystem.getInfo("sauvegarde.txt") then

        --print(file)

    else
       
        
    end
end

function Reload_All_Game()


    
end