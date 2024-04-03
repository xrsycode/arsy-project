Config = {}
Config.Interior = vector3(129.56, -728.22, 254.15) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(437.22, -625.62, 28.71) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(-801.95, -1339.95, 5.15, 348.66) -- Create preview ped at these coordinates
Config.HiddenCoords = vector4(131.71, -744.31, 254.15, 306.29) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(-799.65, -1323.37, 5.1, 170.1) -- Camera coordinates for character preview screen
Config.EnableDeleteButton = false -- Define if the player can delete the character or not


Config.DefaultNumberOfCharacters = 1 -- Define maximum amount of default characters, Max 4 //ST4LTH
Config.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", numberOfChars = 2 },
}
