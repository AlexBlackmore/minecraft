execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 snow[layers=8] replace snow[layers=7]
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 snow[layers=7] replace snow[layers=6]
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 snow[layers=6] replace snow[layers=5]
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 snow[layers=5] replace snow[layers=4]
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 snow[layers=4] replace snow[layers=3]
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 snow[layers=3] replace snow[layers=2]
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 snow[layers=2] replace snow[layers=1]
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 snow[layers=1] replace air

xp add @s -10 points
tellraw @s ["",{"text":"[Snow Placer: -10 XP]","italic":true,"color":"gray"}]
