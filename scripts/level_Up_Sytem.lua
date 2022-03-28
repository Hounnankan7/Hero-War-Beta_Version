--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    --require "scripts/trophees"



--LES VARIABLES------------------------------------------------------------------------------
--Les constantes de calcul
const_exp1 = 40 --cnst pour level up
const_exp2 = 120 --cnst pour level up
const_exp3 = 400 --cnst pour level up

hp_random = 0
mp_random = 0
atk_random = 0
def_random = 0

---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

function level_UP() -- Systeme de level UP et son influence sur le stats joueur

    if player.level < player.max_level then
        if player.exp_actuel + ennemie.exp_loot < player.exp_next_level then

            player.exp_actuel = player.exp_actuel + ennemie.exp_loot

        elseif player.exp_actuel + ennemie.exp_loot >= player.exp_next_level then

            player.level = player.level + 1
            stats_evolution()
            player.exp_actuel = 0
            
        end
    elseif player.level >= player.max_level then
        player.level = player.max_level
        player.exp_actuel = player.exp_next_level
        ui_text.action = "Player a atteint le level max"
    end

end

function stats_evolution()

    if player.id == 1 then

        hp_random = randomNumber(80, 85)
        mp_random = randomNumber(30, 35)
        atk_random = randomNumber(50, 55)
        def_random = randomNumber(40, 45)

        player.max_health_point = (player.level * 50.0) + hp_random
        player.max_magic_point = (player.level * 30.0) + mp_random
        player.attack_point = (player.level * 5.0)
        player.defense_point = (player.level * 5.0)
        player.max_attack_point = (player.level * 5.0) + atk_random
        player.max_defense_point = (player.level * 5.0) + def_random
        player.exp_next_level = math.floor( (const_exp2 * math.sqrt(player.level)) + const_exp1  )

        player.health_point = player.max_health_point
        player.magic_point = player.max_magic_point

    elseif player.id == 2 then

        hp_random = randomNumber(70, 75)
        mp_random = randomNumber(30, 35)
        atk_random = randomNumber(45, 50)
        def_random = randomNumber(55, 60)

        player.max_health_point = (player.level * 50.0) + hp_random
        player.max_magic_point = (player.level * 30.0) + mp_random
        player.attack_point = (player.level * 5.0)
        player.defense_point = (player.level * 5.0)
        player.max_attack_point = (player.level * 5.0) + atk_random
        player.max_defense_point = (player.level * 5.0) + def_random
        player.exp_next_level = math.floor( (const_exp2 * math.sqrt(player.level)) + const_exp1  )

        player.health_point = player.max_health_point
        player.magic_point = player.max_magic_point

    elseif player.id == 3 then

        hp_random = randomNumber(75, 80)
        mp_random = randomNumber(55, 60)
        atk_random = randomNumber(30, 35)
        def_random = randomNumber(40, 45)

        player.max_health_point = (player.level * 50.0) + hp_random
        player.max_magic_point = (player.level * 30.0) + mp_random
        player.attack_point = (player.level * 5.0)
        player.defense_point = (player.level * 5.0)
        player.max_attack_point = (player.level * 5.0) + atk_random
        player.max_defense_point = (player.level * 5.0) + def_random
        player.exp_next_level = math.floor( (const_exp2 * math.sqrt(player.level)) + const_exp1  )

        player.health_point = player.max_health_point
        player.magic_point = player.max_magic_point


    elseif player.id == 4 then

        hp_random = randomNumber(60, 65)
        mp_random = randomNumber(60, 65)
        atk_random = randomNumber(40, 45)
        def_random = randomNumber(40, 45)

        player.max_health_point = (player.level * 50.0) + hp_random
        player.max_magic_point = (player.level * 30.0) + mp_random
        player.attack_point = (player.level * 5.0)
        player.defense_point = (player.level * 5.0)
        player.max_attack_point = (player.level * 5.0) + atk_random
        player.max_defense_point = (player.level * 5.0) + def_random
        player.exp_next_level = math.floor( (const_exp2 * math.sqrt(player.level)) + const_exp3  )

        player.health_point = player.max_health_point
        player.magic_point = player.max_magic_point

    elseif player.id == 5 then

        hp_random = randomNumber(60, 65)
        mp_random = randomNumber(40, 45)
        atk_random = randomNumber(50, 55)
        def_random = randomNumber(50, 55)

        player.max_health_point = (player.level * 50.0) + hp_random
        player.max_magic_point = (player.level * 30.0) + mp_random
        player.attack_point = (player.level * 5.0)
        player.defense_point = (player.level * 5.0)
        player.max_attack_point = (player.level * 5.0) + atk_random
        player.max_defense_point = (player.level * 5.0) + def_random
        player.exp_next_level = math.floor( (const_exp2 * math.sqrt(player.level)) + const_exp3  )

        player.health_point = player.max_health_point
        player.magic_point = player.max_magic_point

    elseif player.id == 6 then

        hp_random = randomNumber(60, 65)
        mp_random = randomNumber(50, 55)
        atk_random = randomNumber(30, 35)
        def_random = randomNumber(40, 45)

        player.max_health_point = (player.level * 50.0) + hp_random
        player.max_magic_point = (player.level * 30.0) + mp_random
        player.attack_point = (player.level * 5.0)
        player.defense_point = (player.level * 5.0)
        player.max_attack_point = (player.level * 5.0) + atk_random
        player.max_defense_point = (player.level * 5.0) + def_random
        player.exp_next_level = math.floor( (const_exp2 * math.sqrt(player.level)) + const_exp3  )

        player.health_point = player.max_health_point
        player.magic_point = player.max_magic_point

    end

end