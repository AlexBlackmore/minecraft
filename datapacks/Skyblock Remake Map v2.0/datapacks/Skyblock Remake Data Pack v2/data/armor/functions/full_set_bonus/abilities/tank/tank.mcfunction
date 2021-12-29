execute if entity @s[team=dark_green] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=dark_green,limit=1] C_Emerald
execute if entity @s[team=dark_red] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=dark_red,limit=1] C_Emerald
execute if entity @s[team=dark_blue] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=dark_blue,limit=1] C_Emerald
execute if entity @s[team=red] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=red,limit=1] C_Emerald
execute if entity @s[team=aqua] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=aqua,limit=1] C_Emerald
execute if entity @s[team=dark_gray] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=dark_gray,limit=1] C_Emerald
execute if entity @s[team=yellow] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=yellow,limit=1] C_Emerald
execute if entity @s[team=dark_purple] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=dark_purple,limit=1] C_Emerald
execute if entity @s[team=gold] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=gold,limit=1] C_Emerald
execute if entity @s[team=gray] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=dark_green,limit=1] C_Emerald
execute if entity @s[team=lgiht_purple] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=light_purple,limit=1] C_Emerald
execute if entity @s[team=green] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=green,limit=1] C_Emerald
execute if entity @s[team=black] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=black,limit=1] C_Emerald
execute if entity @s[team=blue] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=blue,limit=1] C_Emerald
execute if entity @s[team=dark_aqua] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=dark_aqua,limit=1] C_Emerald
execute if entity @s[team=white] run scoreboard players operation @s emCollection = @e[tag=CollectionStand,team=white,limit=1] C_Emerald
scoreboard players operation @s emCollection /= c30 Constant
scoreboard players operation @s emCollection /= c100 Constant
execute if score @s emCollection matches 350.. run scoreboard players set @s emCollection 350