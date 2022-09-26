execute at @s if block ~ ~ ~ minecraft:end_gateway run tag @s add teleport
tag @s[advancements={skyblock:travel_scrolls/dragons_nest=true}] add teleport
tag @s[gamemode=creative] add teleport

tellraw @s[tag=teleport] ["",{"text":"Teleporting to Dragon's Nest...","color":"yellow","bold":false}]
tellraw @s[tag=!teleport] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[gamemode=survival,tag=teleport]
execute in skyblock:the_end run tp @s[tag=teleport] 68 22 0 90 0
xp add @s -1 points
xp add @s 1 points
tag @s remove teleport
