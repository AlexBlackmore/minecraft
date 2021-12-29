scoreboard players set @s A_Log_Mined 0
scoreboard players set @s A_Wood_Mined 0
execute at @s if entity @e[type=armor_stand,tag=InParkFromSavanna,distance=..10] unless blocks 9620 82 9982 9620 76 9978 -380 110 -22 masked run function public_islands:map_regeneration/savanna_woodland/fix_portal
execute at @s if entity @e[type=villager,tag=Melody,distance=..19] unless blocks ~9995 ~-58 ~9995 ~10005 ~-69 ~10005 ~-5 ~-5 ~-5 masked run function public_islands:map_regeneration/savanna_woodland/melody_tree
function public_islands:map_regeneration/savanna_woodland/check_tree_loop
