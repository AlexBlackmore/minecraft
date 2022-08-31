tellraw @s ["",{"text":"Teleporting to Hub Graveyard...","color":"yellow","bold":false}]
gamemode adventure @s[gamemode=survival]
execute in skyblock:hub_island run tp @s -161 73 -160 315 0
xp add @s -1 points
xp add @s 1 points