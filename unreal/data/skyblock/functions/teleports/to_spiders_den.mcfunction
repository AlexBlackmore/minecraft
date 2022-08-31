execute at @s if block ~ ~ ~ minecraft:end_gateway run tag @s add teleport
tag @s[advancements={skyblock:travel_scrolls/spiders_den=true}] add teleport

tellraw @s[tag=teleport] ["",{"text":"Teleporting to Spider's Den...","color":"yellow","bold":false}]
tellraw @s[tag=!teleport] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[gamemode=survival,tag=teleport]
execute in skyblock:spiders_den run tp @s[tag=teleport] -202.5 84 -233.5 135 0
xp add @s -1 points
xp add @s 1 points
tag @s remove teleport
