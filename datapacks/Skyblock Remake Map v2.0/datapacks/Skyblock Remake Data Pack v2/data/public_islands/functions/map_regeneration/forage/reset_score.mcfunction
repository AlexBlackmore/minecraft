scoreboard players set @s Oak_Log_Mined 0
scoreboard players set @s Oak_Wood_Mined 0
execute if entity @e[type=armor_stand,tag=the_park,distance=..10] unless blocks 9777 81 9988 9777 74 9984 -224 71 -18 masked run function public_islands:map_regeneration/forage/fix_portal
function public_islands:map_regeneration/forage/check_tree_loop
