tellraw @s ["",{"text":"Teleporting to Spider's Den Nether Portal...","color":"yellow","bold":false}]
gamemode adventure @s[gamemode=survival]
execute in skyblock:spiders_den run tp @s -255 132 -291 0 0
xp add @s -1 points
xp add @s 1 points