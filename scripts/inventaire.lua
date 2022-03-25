--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"



function inventory_Init()

    inventaire = {}
    inventaire.hp20 = love.graphics.newImage("assets/icons/inventaires/hp20.png")
end

function draw_Inventory()

    love.graphics.setColor(1, 1, 1, 0.5)
    love.graphics.rectangle("fill", 14*tileSize, 30*tileSize, 10*tileSize, 10*tileSize)
    
end