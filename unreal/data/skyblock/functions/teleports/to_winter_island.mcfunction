tag @s[advancements={skyblock:travel_scrolls/jerrys_workshop=true}] add teleport
tag @s[gamemode=creative] add teleport

tellraw @s[tag=teleport] ["",{"text":"Teleporting to Winter Island...","color":"yellow","bold":false}]
tellraw @s[tag=!teleport] ["",{"text":"Jerry's Workshop is not currently open.","color":"red","bold":false}]

gamemode adventure @s[gamemode=survival,tag=teleport]
execute in skyblock:winter_island run tp @s[tag=teleport] 4 76 97 135 0
xp add @s -1 points
xp add @s 1 points
tag @s remove teleport