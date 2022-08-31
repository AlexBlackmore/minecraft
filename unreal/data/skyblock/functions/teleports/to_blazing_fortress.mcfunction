execute at @s if block ~ ~ ~ minecraft:end_gateway run tag @s add teleport
tag @s[advancements={skyblock:travel_scrolls/blazing_fortress=true}] add teleport

tellraw @s[tag=teleport] ["",{"text":"Teleporting to Blazing Fortress...","color":"yellow","bold":false}]
tellraw @s[tag=!teleport] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[gamemode=survival,tag=teleport]
execute in skyblock:blazing_fortress run tp @s[tag=teleport] -310.0 83 -380.5 -180 0
xp add @s -1 points
xp add @s 1 points
tag @s remove teleport
