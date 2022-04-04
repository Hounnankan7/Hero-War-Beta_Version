--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"



function inventory_Init()

    inventaire = {}
    inventaire.hp20 = love.graphics.newImage("assets/icons/inventaires/hp20.png")
    inventaire.hp200 = love.graphics.newImage("assets/icons/inventaires/hp200.png")
    inventaire.hp300 = love.graphics.newImage("assets/icons/inventaires/hp300.png")
    inventaire.hp500 = love.graphics.newImage("assets/icons/inventaires/hp500.png")
    inventaire.mp20 = love.graphics.newImage("assets/icons/inventaires/mp20.png")
    inventaire.mp150 = love.graphics.newImage("assets/icons/inventaires/mp150.png")
    inventaire.mp250 = love.graphics.newImage("assets/icons/inventaires/mp250.png")
    inventaire.mp300 = love.graphics.newImage("assets/icons/inventaires/mp300.png")

    nbr_item ={}
    nbr_item.hp20 = 10
    nbr_item.hp200 = 4
    nbr_item.hp300 = 4
    nbr_item.hp500 = 10
    nbr_item.mp20 = 10
    nbr_item.mp150 = 10
    nbr_item.mp250 = 10
    nbr_item.mp300 = 10
    nbr_item.stone = 2
    nbr_item.gift = 1

    gift_choice = 0

    loot_item = {}
    loot_item.hp20 = 0
    loot_item.hp200 = 0
    loot_item.hp300 = 0
    loot_item.hp500 = 0
    loot_item.mp20 = 0
    loot_item.mp150 = 0
    loot_item.mp250 = 0
    loot_item.mp300 = 0
    loot_item.stone = 0
    loot_item.gift = 0
    
end


function inventory_Update(dt)

    love.graphics.print("x"..nbr_item.hp20, 17*tileSize, 29*tileSize)
    love.graphics.print("x"..nbr_item.hp200, 17*tileSize, 32*tileSize)
    love.graphics.print("x"..nbr_item.hp300, 17*tileSize, 35*tileSize)
    love.graphics.print("x"..nbr_item.hp500, 17*tileSize, 38*tileSize)

    love.graphics.print("x"..nbr_item.mp20, 25*tileSize, 29*tileSize)
    love.graphics.print("x"..nbr_item.mp150, 25*tileSize, 32*tileSize)
    love.graphics.print("x"..nbr_item.mp250, 25*tileSize, 35*tileSize)
    love.graphics.print("x"..nbr_item.mp300, 25*tileSize, 38*tileSize)

end

function loot_Calculation()
    
end

function loot_Ajout()
    
end

---------------------------------------------------------------------------------------------
--LES FONCTIONS D'UTILISATIONS DES DIFFERENTS ITEMS

    function use_hp20(dt)

        if nbr_item.hp20 >= 1 then

            if player.health_point < player.max_health_point then

                if player.health_point + 20 < player.max_health_point then

                    player.health_point = math.floor((player.health_point + 20 ))
                    nbr_item.hp20 = nbr_item.hp20 -1 
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player HP +20"
                    delay_s(0.9)
                    my_turn = 2
    
                elseif player.health_point + 20 >= player.max_health_point then

                    player.health_point = player.max_health_point
                    nbr_item.hp20 = nbr_item.hp20 -1 
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player HP +20"
                    delay_s(0.9)
                    my_turn = 2
     
                end

            elseif player.health_point >= player.max_health_point then

                player.health_point = player.max_health_point
                ui_text.action = "Votre vie est deja pleine"
                delay_s(0.9)
       
            end

        elseif nbr_item.hp20 <= 0 then

            nbr_item.hp20 = 0
            ui_text.action = "Player n'a plus la potion correspondante"
            delay_s(0.9)
           
        end
        
    end

    function use_hp200(dt)

        if nbr_item.hp200 >= 1 then

            if player.health_point < player.max_health_point then

                if player.health_point + 200 < player.max_health_point then

                    player.health_point = math.floor((player.health_point + 200 ))
                    nbr_item.hp200 = nbr_item.hp200 -1 
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player HP +200"
                    delay_s(0.9)
                    my_turn = 2
    
                elseif player.health_point + 200 >= player.max_health_point then

                    player.health_point = player.max_health_point
                    nbr_item.hp200 = nbr_item.hp200 -1 
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player HP +200"
                    delay_s(0.9)
                    my_turn = 2
     
                end

            elseif player.health_point >= player.max_health_point then

                player.health_point = player.max_health_point
                ui_text.action = "Votre vie est deja pleine"
                delay_s(0.9)
       
            end

            
        elseif nbr_item.hp200 <= 0 then

            nbr_item.hp200 = 0
            ui_text.action = "Player n'a plus la potion correspondante"
            delay_s(0.9)
                
        end

        
    end

    function use_hp300(dt)

        if nbr_item.hp300 >= 1 then

            if player.health_point < player.max_health_point then

                if player.health_point + 300 < player.max_health_point then

                    player.health_point = math.floor((player.health_point + 300 ))
                    nbr_item.hp300 = nbr_item.hp300 -1 
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player HP +300"
                    delay_s(0.9)
                    my_turn = 2
    
                elseif player.health_point + 300 >= player.max_health_point then

                    player.health_point = player.max_health_point
                    nbr_item.hp300 = nbr_item.hp300 -1 
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player HP +300"
                    delay_s(0.9)
                    my_turn = 2
     
                end

            elseif player.health_point >= player.max_health_point then

                player.health_point = player.max_health_point
                ui_text.action = "Votre vie est deja pleine"
                delay_s(0.9)
       
            end

            
        elseif nbr_item.hp300 <= 0 then

            nbr_item.hp300 = 0
            ui_text.action = "Player n'a plus la potion correspondante"
            delay_s(0.9)
                
        end

        
    end

    function use_hp500(dt)

        if nbr_item.hp500 >= 1 then

            if player.health_point < player.max_health_point then

                if player.health_point + 500 < player.max_health_point then

                    player.health_point = math.floor((player.health_point + 500 ))
                    nbr_item.hp500 = nbr_item.hp500 -1 
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player HP +500"
                    delay_s(0.9)
                    my_turn = 2
    
                elseif player.health_point + 500 >= player.max_health_point then

                    player.health_point = player.max_health_point
                    nbr_item.hp500 = nbr_item.hp500 -1 
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player HP +500"
                    delay_s(0.9)
                    my_turn = 2
     
                end

            elseif player.health_point >= player.max_health_point then

                player.health_point = player.max_health_point
                ui_text.action = "Votre vie est deja pleine"
                delay_s(0.9)
       
            end

            
        elseif nbr_item.hp500 <= 0 then

            nbr_item.hp500 = 0
            ui_text.action = "Player n'a plus la potion correspondante"
            delay_s(0.9)
                
        end

        
    end

    function use_mp20(dt)

        if nbr_item.mp20 >= 1 then

            if player.magic_point < player.max_magic_point then

                if player.magic_point + 20 < player.max_magic_point then

                    player.magic_point = math.floor((player.magic_point + 20))
                    nbr_item.mp20 = nbr_item.mp20 - 1
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player TP +20"
                    delay_s(0.9)
                    my_turn = 2    

                elseif player.magic_point + 20 >= player.max_magic_point then

                    player.magic_point = player.max_magic_point
                    nbr_item.mp20 = nbr_item.mp20 - 1
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player TP +20"
                    delay_s(0.9)
                    my_turn = 2
                    
                end
            
            elseif player.magic_point >= player.max_magic_point then

                player.magic_point = player.max_magic_point
                ui_text.action = "Vos point de technique sont deja pleins"
                delay_s(0.9)
    
            end
            
        elseif nbr_item.mp20 <= 0 then

            nbr_item.mp20 = 0
            ui_text.action = "Player n'a plus la potion correspondante"
            delay_s(0.9)
                
        end

        
    end

    function use_mp150(dt)

        if nbr_item.mp150 >= 1 then

            if player.magic_point < player.max_magic_point then

                if player.magic_point + 150 < player.max_magic_point then

                    player.magic_point = math.floor((player.magic_point + 150))
                    nbr_item.mp150 = nbr_item.mp150 - 1
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player TP +150"
                    delay_s(0.9)
                    my_turn = 2    

                elseif player.magic_point + 150 >= player.max_magic_point then

                    player.magic_point = player.max_magic_point
                    nbr_item.mp150 = nbr_item.mp150 - 1
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player TP +150"
                    delay_s(0.9)
                    my_turn = 2
                    
                end
            
            elseif player.magic_point >= player.max_magic_point then

                player.magic_point = player.max_magic_point
                ui_text.action = "Vos point de technique sont deja pleins"
                delay_s(0.9)
    
            end

            
        elseif nbr_item.mp150 <= 0 then

            nbr_item.mp150 = 0
            ui_text.action = "Player n'a plus la potion correspondante"
            delay_s(0.9)
                
        end

        
    end

    function use_mp250(dt)

        if nbr_item.mp250 >= 1 then

            if player.magic_point < player.max_magic_point then

                if player.magic_point + 250 < player.max_magic_point then

                    player.magic_point = math.floor((player.magic_point + 250))
                    nbr_item.mp250 = nbr_item.mp250 - 1
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player TP +250"
                    delay_s(0.9)
                    my_turn = 2    

                elseif player.magic_point + 250 >= player.max_magic_point then

                    player.magic_point = player.max_magic_point
                    nbr_item.mp250 = nbr_item.mp250 - 1
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player TP +250"
                    delay_s(0.9)
                    my_turn = 2
                    
                end
            
            elseif player.magic_point >= player.max_magic_point then

                player.magic_point = player.max_magic_point
                ui_text.action = "Vos point de technique sont deja pleins"
                delay_s(0.9)
    
            end

            
        elseif nbr_item.mp250 <= 0 then

            nbr_item.mp250 = 0
            ui_text.action = "Player n'a plus la potion correspondante"
            delay_s(0.9)
                
        end

        
    end

    function use_mp300(dt)

        if nbr_item.mp300 >= 1 then

            if player.magic_point < player.max_magic_point then

                if player.magic_point + 300 < player.max_magic_point then

                    player.magic_point = math.floor((player.magic_point + 300))
                    nbr_item.mp300 = nbr_item.mp300 - 1
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player TP +300"
                    delay_s(0.9)
                    my_turn = 2    

                elseif player.magic_point + 300 >= player.max_magic_point then

                    player.magic_point = player.max_magic_point
                    nbr_item.mp300 = nbr_item.mp300 - 1
                    trophee.food_addict = trophee.food_addict + 1
                    ui_text.action = "Player TP +300"
                    delay_s(0.9)
                    my_turn = 2
                    
                end
            
            elseif player.magic_point >= player.max_magic_point then

                player.magic_point = player.max_magic_point
                ui_text.action = "Vos point de technique sont deja pleins"
                delay_s(0.9)
    
            end

            
        elseif nbr_item.mp300 <= 0 then

            nbr_item.mp300 = 0
            ui_text.action = "Player n'a plus la potion correspondante"
            delay_s(0.9)
                
        end

        
    end

    function use_stone(dt)

        if nbr_item.stone >= 1 then

            if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then

                damage_to_ennemy = (10 * (100/(100 + ennemie.defense_point)))
                ennemie.health_point = math.floor((ennemie.health_point - damage_to_ennemy))
                nbr_item.stone = nbr_item.stone - 1
                ui_text.action = "Player throw a stone to deal "..damage_to_ennemy.." damage to ennemy"
                delay_s(0.8)  
                my_turn = 2

            elseif ennemie.health_point <= 0 then
                
            end
            
        elseif nbr_item.stone <= 0 then

            nbr_item.stone = 0
            ui_text.action = "Player n'a plus assez de projectile"
            delay_s(0.9)
                
        end

    end

    function use_gift(dt) -- Revenir pour bien faire le choix du cadeau

        if nbr_item.gift >= 1 then

            gift_choice = randomNumber(1, 2)
            if gift_choice == 1 then
                nbr_item.hp20 = nbr_item.hp20 + 1
            elseif gift_choice == 2 then
                nbr_item.hp20 = nbr_item.hp20 + 2
            end
            nbr_item.gift = nbr_item.gift - 1
            delay_s(0.9)
            
        elseif nbr_item.gift <= 0 then

            nbr_item.gift = 0
            ui_text.action = "Player n'a plus assez de cadeau à ouvrir"
            delay_s(0.9)
                
        end

        
    end

---------------------------------------------------------------------------------------------

function draw_Inventory()

    love.graphics.setColor(1, 1, 1, 0.65)
    love.graphics.rectangle("fill", 14*tileSize, 27.5*tileSize, 16*tileSize, 12*tileSize)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle("fill", 14.5*tileSize, 28*tileSize, 7*tileSize, 32)
    love.graphics.rectangle("fill", 14.5*tileSize, 31*tileSize, 7*tileSize, 32)
    love.graphics.rectangle("fill", 14.5*tileSize, 34*tileSize, 7*tileSize, 32)
    love.graphics.rectangle("fill", 14.5*tileSize, 37*tileSize, 7*tileSize, 32)

    love.graphics.rectangle("fill", 22.5*tileSize, 28*tileSize, 7*tileSize, 32)
    love.graphics.rectangle("fill", 22.5*tileSize, 31*tileSize, 7*tileSize, 32)
    love.graphics.rectangle("fill", 22.5*tileSize, 34*tileSize, 7*tileSize, 32)
    love.graphics.rectangle("fill", 22.5*tileSize, 37*tileSize, 7*tileSize, 32)

    love.graphics.draw(inventaire.hp20, 14.5*tileSize, 28*tileSize)
    love.graphics.draw(inventaire.hp200, 14.5*tileSize, 31*tileSize)
    love.graphics.draw(inventaire.hp300, 14.5*tileSize, 34*tileSize)
    love.graphics.draw(inventaire.hp500, 14.5*tileSize, 37*tileSize)

    love.graphics.draw(inventaire.mp20, 22.5*tileSize, 28*tileSize)
    love.graphics.draw(inventaire.mp150, 22.5*tileSize, 31*tileSize)
    love.graphics.draw(inventaire.mp250, 22.5*tileSize, 34*tileSize)
    love.graphics.draw(inventaire.mp300, 22.5*tileSize, 37*tileSize)

    love.graphics.setFont(font_quard)
    love.graphics.setColor(0, 0, 0)
    love.graphics.print("HP+20", 17*tileSize, 28.2*tileSize)
    love.graphics.print("HP+200", 17*tileSize, 31.2*tileSize)
    love.graphics.print("HP+300", 17*tileSize, 34.2*tileSize)
    love.graphics.print("HP+500", 17*tileSize, 37.2*tileSize)

    love.graphics.print("TP+20", 25*tileSize, 28.2*tileSize)
    love.graphics.print("TP+150", 25*tileSize, 31.2*tileSize)
    love.graphics.print("TP+250", 25*tileSize, 34.2*tileSize)
    love.graphics.print("TP+300", 25*tileSize, 37.2*tileSize)

    love.graphics.print("x"..nbr_item.hp20, 17*tileSize, 29*tileSize)
    love.graphics.print("x"..nbr_item.hp200, 17*tileSize, 32*tileSize)
    love.graphics.print("x"..nbr_item.hp300, 17*tileSize, 35*tileSize)
    love.graphics.print("x"..nbr_item.hp500, 17*tileSize, 38*tileSize)

    love.graphics.print("x"..nbr_item.mp20, 25*tileSize, 29*tileSize)
    love.graphics.print("x"..nbr_item.mp150, 25*tileSize, 32*tileSize)
    love.graphics.print("x"..nbr_item.mp250, 25*tileSize, 35*tileSize)
    love.graphics.print("x"..nbr_item.mp300, 25*tileSize, 38*tileSize)

    love.graphics.setColor(1, 1, 1)

end