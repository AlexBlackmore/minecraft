tag @s[advancements={skyblock:travel_scrolls/deep_caverns/lapis_quarry=true}] add teleport
tag @s[gamemode=creative] add teleport

tellraw @s[tag=teleport] ["",{"text":"Warping to Lapis Quarry...","color":"light_purple","bold":false}]
tellraw @s[tag=!teleport] ["",{"text":"You don't have this travel scroll unlocked yet.","color":"red","bold":false}]

gamemode adventure @s[gamemode=survival,tag=teleport]
execute in skyblock:deep_caverns run tp @s[tag=teleport] 100215 121 99279 90 0
xp add @s -1 points
xp add @s 1 points
tag @s remove teleport