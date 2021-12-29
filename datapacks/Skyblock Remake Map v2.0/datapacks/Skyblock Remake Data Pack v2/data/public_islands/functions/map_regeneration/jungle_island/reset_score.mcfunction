scoreboard players set @s J_Log_Mined 0
scoreboard players set @s J_Wood_Mined 0
execute at @s if entity @e[type=armor_stand,tag=InParkFromJungle,distance=..10] unless blocks 9595 91 9960 9591 86 9960 -409 120 -40 masked run function public_islands:map_regeneration/jungle_island/fix_portal
function public_islands:map_regeneration/jungle_island/check_tree_loop
