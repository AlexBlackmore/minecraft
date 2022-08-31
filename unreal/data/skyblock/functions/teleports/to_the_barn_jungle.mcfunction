tellraw @s ["",{"text":"Teleporting to The Barn...","color":"yellow","bold":false}]
gamemode adventure @s[gamemode=survival]
execute in skyblock:the_barn run tp @p 153 77 -363 225 0
xp add @s -1 points
xp add @s 1 points