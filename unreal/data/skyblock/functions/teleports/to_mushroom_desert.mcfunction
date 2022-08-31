execute at @s if block ~ ~ ~ minecraft:end_gateway run tag @s add teleport
tag @s[advancements={skyblock:travel_scrolls/mushroom_desert=true}] add teleport

tellraw @s[tag=teleport] ["",{"text":"Teleporting to Mushroom Desert...","color":"yellow","bold":false}]
tellraw @s[tag=!teleport] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[gamemode=survival,tag=teleport]
execute in skyblock:mushroom_desert run tp @s[tag=teleport] 160.5 77 -370 -147 0
xp add @s -1 points
xp add @s 1 points
tag @s remove teleport
