execute at @s if block ~ ~ ~ minecraft:end_gateway run tag @s add teleport
tag @s[advancements={skyblock:travel_scrolls/root=true}] add teleport

tellraw @s[tag=teleport] ["",{"text":"Teleporting to Hub Village...","color":"yellow","bold":false}]
tellraw @s[tag=!teleport] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[gamemode=survival,tag=teleport]
execute in skyblock:hub_island run tp @s[tag=teleport] -2.5 70 -84.5 180 0
xp add @s -1 points
xp add @s 1 points
tag @s remove teleport
