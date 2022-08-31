tellraw @s ["",{"text":"Teleporting to Hub Farm...","color":"yellow","bold":false}]
gamemode adventure @s[gamemode=survival]
execute in skyblock:hub_island run tp @s 76 72 -182 45 0
xp add @s -1 points
xp add @s 1 points