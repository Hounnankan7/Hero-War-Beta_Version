--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "scripts/interfaces/ui_combat"


function skill_Update()

    if choix_character == 1 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/swordman_skill/skill_4.png")
        ui_action.skill_1_name = "SLASH"
        ui_action.skill_2_name = ""
        ui_action.skill_3_name = ""
        ui_action.skill_4_name = ""
        ui_action.consoTP_1 = "-50TP"
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 2 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/spearman_skill/skill_4.png")
        ui_action.skill_1_name = ""
        ui_action.skill_2_name = ""
        ui_action.skill_3_name = ""
        ui_action.skill_4_name = ""
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 3 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/gunner_skill/skill_4.png")
        ui_action.skill_1_name = ""
        ui_action.skill_2_name = ""
        ui_action.skill_3_name = ""
        ui_action.skill_4_name = ""
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 4 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/ninja_skill/skill_4.png")
        ui_action.skill_1_name = ""
        ui_action.skill_2_name = ""
        ui_action.skill_3_name = ""
        ui_action.skill_4_name = ""
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 5 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/samurai_skill/skill_4.png")
        ui_action.skill_1_name = ""
        ui_action.skill_2_name = ""
        ui_action.skill_3_name = ""
        ui_action.skill_4_name = ""
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    elseif choix_character == 6 then
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_2.png")
        ui_action.skill_3 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_3.png")
        ui_action.skill_4 = love.graphics.newImage("assets/icons/actions/spiritualist_skill/skill_4.png")
        ui_action.skill_1_name = ""
        ui_action.skill_2_name = ""
        ui_action.skill_3_name = ""
        ui_action.skill_4_name = ""
        ui_action.consoTP_1 = ""
        ui_action.consoTP_2 = ""
        ui_action.consoTP_3 = ""
        ui_action.consoTP_4 = ""
    end
    
end

function draw_Skill()

    love.graphics.setColor(1, 1, 1, 0.65)
    love.graphics.rectangle("fill", 40*tileSize, 27.5*tileSize, 16*tileSize, 12*tileSize)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", 40.5*tileSize, 28*tileSize, 15*tileSize, 32)
    love.graphics.rectangle("fill", 40.5*tileSize, 31*tileSize, 15*tileSize, 32)
    love.graphics.rectangle("fill", 40.5*tileSize, 34*tileSize, 15*tileSize, 32)
    love.graphics.rectangle("fill", 40.5*tileSize, 37*tileSize, 15*tileSize, 32)

    love.graphics.draw(ui_action.skill_1, 40.5*tileSize, 28*tileSize)
    love.graphics.draw(ui_action.skill_2, 40.5*tileSize, 31*tileSize)
    love.graphics.draw(ui_action.skill_3, 40.5*tileSize, 34*tileSize)
    love.graphics.draw(ui_action.skill_4, 40.5*tileSize, 37*tileSize)
    love.graphics.setColor(0, 0, 0)
    love.graphics.setFont(font_quard)
    love.graphics.print(ui_action.skill_1_name, 43*tileSize, 28.4*tileSize)
    love.graphics.print(ui_action.skill_2_name, 43*tileSize, 31.4*tileSize)
    love.graphics.print(ui_action.skill_3_name, 43*tileSize, 34.4*tileSize)
    love.graphics.print(ui_action.skill_4_name, 43*tileSize, 37.4*tileSize)

    love.graphics.print(ui_action.consoTP_1, 43*tileSize, 29*tileSize)
    love.graphics.print(ui_action.consoTP_2, 43*tileSize, 32*tileSize)
    love.graphics.print(ui_action.consoTP_3, 43*tileSize, 35*tileSize)
    love.graphics.print(ui_action.consoTP_4, 43*tileSize, 38*tileSize)

    love.graphics.setColor(1, 1, 1)

end