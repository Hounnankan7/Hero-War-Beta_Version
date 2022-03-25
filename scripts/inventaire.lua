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
    nbr_item.stone = 5
    nbr_item.gift = 1

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