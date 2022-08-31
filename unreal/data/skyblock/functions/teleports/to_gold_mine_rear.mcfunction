tellraw @s ["",{"text":"Teleporting to Gold Mine...","color":"yellow","bold":false}]
gamemode adventure @s[gamemode=survival]
execute in skyblock:gold_mine run tp @s -7.0 68 -394 45 0
xp add @s -1 points
xp add @s 1 points