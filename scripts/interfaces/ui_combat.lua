--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/player"
    require "scripts/ennemy"
    require "scripts/trophee"


--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------


--MES FONCTIONS CREES------------------------------------------------------------------------

    function ui_Combat_Init()

        --INFOS PLAYERS ET ENNEMIES
        --Cote Players
        ui_combat_player = {}
        ui_combat_player.name = player.name
        ui_combat_player.level = "LVL: "..player.level.."/"..player.max_level
        ui_combat_player.exp = "EXP: "..player.exp_actuel.."/"..player.exp_next_level
        ui_combat_player.hp = "HP: "..player.health_point.."/"..player.max_health_point
        ui_combat_player.mp = "TP: "..player.magic_point.."/"..player.max_magic_point
        ui_combat_player.attack = "ATK: "..player.attack_point.."/"..player.max_attack_point
        ui_combat_player.defense = "DEF: "..player.defense_point.."/"..player.max_defense_point
        --Cote Ennemies
        ui_combat_ennemy = {}
        ui_combat_ennemy.name = ennemie.name
        ui_combat_ennemy.hp = "HP: "..ennemie.health_point.."/"..ennemie.max_health_point
        ui_combat_ennemy.mp = "TP: "..ennemie.magic_point.."/"..ennemie.max_magic_point
        ui_combat_ennemy.attack = "ATK: "..ennemie.attack_point.."/"..ennemie.max_attack_point
        ui_combat_ennemy.defense = "DEF: "..ennemie.defense_point.."/"..ennemie.max_defense_point
        ui_combat_ennemy.exp_loot = "EXP LOOT: "..ennemie.exp_loot

        --LES BOUTONS D'ACTIONS
        ui_action = {}
        ui_action.normal_attack = love.graphics.newImage("assets/icons/actions/sword.png")
        ui_action.skill = love.graphics.newImage("assets/icons/actions/skill.png")
       
        if choix_character == 1 then
            ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_1.png")
            ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_2.png")
            ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_3.png")
            ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_4.png")
        elseif choix_character == 2 then
            ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_1.png")
            ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_2.png")
            ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_3.png")
            ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_4.png")
        elseif choix_character == 3 then
            ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_1.png")
            ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_2.png")
            ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_3.png")
            ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_4.png")
        elseif choix_character == 4 then
            ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_1.png")
            ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_2.png")
            ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_3.png")
            ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_4.png")
        elseif choix_character == 5 then
            ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_1.png")
            ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_2.png")
            ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_3.png")
            ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_4.png")
        elseif choix_character == 6 then
            ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_1.png")
            ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_2.png")
            ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_3.png")
            ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_4.png")
        end
        
        ui_action.defense = love.graphics.newImage("assets/icons/actions/shield.png")
        ui_action.run = love.graphics.newImage("assets/icons/actions/run.png")


        --INVENTAIRE
        ui_inventaire = {}
        ui_inventaire.bag = love.graphics.newImage("assets/icons/inventaires/inventaire.png")
        ui_inventaire.hp = love.graphics.newImage("assets/icons/inventaires/hp20.png")
        ui_inventaire.mp = love.graphics.newImage("assets/icons/inventaires/mp20.png")
        ui_inventaire.projectile = love.graphics.newImage("assets/icons/inventaires/stone.png")
        ui_inventaire.gift = love.graphics.newImage("assets/icons/inventaires/gift.png")



        --ui_text
        ui_text = {}
        ui_text.turn =""
        ui_text.action =""


    end

    function ui_Combat_Update()

        --Cote Players
        ui_combat_player.name = player.name
        ui_combat_player.level = "LVL: "..player.level.."/"..player.max_level
        ui_combat_player.exp = "EXP: "..player.exp_actuel.."/"..player.exp_next_level
        ui_combat_player.hp = "HP: "..player.health_point.."/"..player.max_health_point
        ui_combat_player.mp = "TP: "..player.magic_point.."/"..player.max_magic_point
        ui_combat_player.attack = "ATK: "..player.attack_point.."/"..player.max_attack_point
        ui_combat_player.defense = "DEF: "..player.defense_point.."/"..player.max_defense_point
        --Cote Ennemies
        ui_combat_ennemy.name = ennemie.name
        ui_combat_ennemy.hp = "HP: "..ennemie.health_point.."/"..ennemie.max_health_point
        ui_combat_ennemy.mp = "TP: "..ennemie.magic_point.."/"..ennemie.max_magic_point
        ui_combat_ennemy.attack = "ATK: "..ennemie.attack_point.."/"..ennemie.max_attack_point
        ui_combat_ennemy.defense = "DEF: "..ennemie.defense_point.."/"..ennemie.max_defense_point
        ui_combat_ennemy.exp_loot = "EXP LOOT: "..ennemie.exp_loot



    end

    function draw_Ui_Combat()

        --Player
        PlayerDraw()
        love.graphics.setFont(font_third)
        love.graphics.print(ui_combat_player.name, 12*tileSize, 22*tileSize)
        love.graphics.print(ui_combat_player.level, 12*tileSize, 24*tileSize)
        love.graphics.print(ui_combat_player.exp, 12*tileSize, 26*tileSize)
        love.graphics.print(ui_combat_player.hp, 12*tileSize, 28*tileSize)
        love.graphics.print(ui_combat_player.mp, 12*tileSize, 30*tileSize)
        love.graphics.print(ui_combat_player.attack, 12*tileSize, 32*tileSize)
        love.graphics.print(ui_combat_player.defense, 12*tileSize, 34*tileSize)
        --Ennemy
        EnnemyDraw()
        love.graphics.setFont(font_third)
        love.graphics.print(ui_combat_ennemy.name, 44*tileSize, 22*tileSize)
        love.graphics.print(ui_combat_ennemy.hp, 44*tileSize, 24*tileSize)
        love.graphics.print(ui_combat_ennemy.mp, 44*tileSize, 26*tileSize)
        love.graphics.print(ui_combat_ennemy.attack, 44*tileSize, 28*tileSize)
        love.graphics.print(ui_combat_ennemy.defense, 44*tileSize, 30*tileSize)
        love.graphics.print(ui_combat_ennemy.exp_loot, 44*tileSize, 32*tileSize)

        --Just the middle rectangle
        love.graphics.rectangle("line", 30*tileSize, 38*tileSize, 64, 64)
        love.graphics.print("BATTLE", 30.2*tileSize, 37*tileSize)
        love.graphics.print("2", 31.5*tileSize, 39.5*tileSize)

        --Bouton d'action
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_third)
        love.graphics.print("Actions", 40*tileSize, 37*tileSize)
        love.graphics.rectangle("line", 36*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 40*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 44*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 48*tileSize, 40*tileSize, 32, 32)

        love.graphics.draw(ui_action.normal_attack, 36.1*tileSize, 40.2*tileSize)
        love.graphics.draw(ui_action.skill, 40*tileSize, 40*tileSize)
        love.graphics.draw(ui_action.defense, 44.1*tileSize, 40.2*tileSize)
        love.graphics.draw(ui_action.run, 47.6*tileSize, 39.7*tileSize)

        love.graphics.setFont(font_quard)
        love.graphics.print("Attack", 35.5*tileSize, 38.8*tileSize)
        love.graphics.print("Skills", 39.5*tileSize, 38.8*tileSize)
        love.graphics.print("Defend", 43.5*tileSize, 38.8*tileSize)
        love.graphics.print("Run", 48.2*tileSize, 38.8*tileSize)

        --Bouton inventaire
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_third)
        love.graphics.print("Inventory", 18*tileSize, 37*tileSize)
        love.graphics.rectangle("line", 14*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 18*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 22*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 26*tileSize, 40*tileSize, 32, 32)
        love.graphics.draw(ui_inventaire.hp, 14*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.mp, 18*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.projectile, 22.2*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.gift, 26.1*tileSize, 40*tileSize)
        love.graphics.setFont(font_quard)
        love.graphics.print("HP+", 14*tileSize, 38.8*tileSize)
        love.graphics.print("Tp+", 18*tileSize, 38.8*tileSize)
        love.graphics.print("Throw", 22*tileSize, 38.8*tileSize)
        love.graphics.print("Gift", 26*tileSize, 38.8*tileSize)



        --ui_text
        love.graphics.setFont(font_quard)
        love.graphics.print("Previous ations : ", 29.2*tileSize, 4*tileSize)
        love.graphics.print(ui_text.action , 24.5*tileSize, 6*tileSize)



    end
    
    function action_UI_Combat(interface_choice,dt)
        return interface_choice
    end
---------------------------------------------------------------------------------------------