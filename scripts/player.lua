--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"

--LES VARIABLES------------------------------------------------------------------------------

    damage_to_ennemy = 0

---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------

function PlayerCreation(choix_character) --Fonction d'initialisation du perso du player
    
    CharacterSelection(choix_character)
    player = {}
    player.id = character.id 
    player.class = character.class
    player.name = character.name
    player.liens = character.liens
    player.image = character.image
    player.max_health_point = character.max_health_point
    player.health_point = character.health_point
    player.magic_point = character.magic_point
    player.max_magic_point = character.max_magic_point
    player.attack_point = character.attack_point
    player.max_attack_point = character.max_attack_point
    player.defense_point = character.defense_point
    player.max_defense_point = character.max_defense_point
    player.level = character.level
    player.max_level = character.max_level
    player.exp_actuel = character.exp_actuel
    player.exp_next_level = character.exp_next_level

end

function PlayerDraw() --Fonction pour dessiner le perso du player
    
    love.graphics.draw(player.image, 12*tileSize, 10*tileSize, 0, 2)

end

---------------------------------------------------------------------------------------------
