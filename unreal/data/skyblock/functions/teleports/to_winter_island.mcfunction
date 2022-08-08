tellraw @s[advancements={skyblock:travel_scrolls/jerrys_workshop=true}] ["",{"text":"Teleporting to Winter Island...","color":"yellow","bold":false}]
tellraw @s[advancements={skyblock:travel_scrolls/jerrys_workshop=false}] ["",{"text":"Jerry's Workshop is not currently open.","color":"red","bold":false}]

gamemode adventure @s[advancements={skyblock:travel_scrolls/jerrys_workshop=true},gamemode=survival]
execute in skyblock:winter_island run tp @s[advancements={skyblock:travel_scrolls/jerrys_workshop=true}] 4 76 97 135 0
xp add @s[advancements={skyblock:travel_scrolls/jerrys_workshop=true}] -1 points