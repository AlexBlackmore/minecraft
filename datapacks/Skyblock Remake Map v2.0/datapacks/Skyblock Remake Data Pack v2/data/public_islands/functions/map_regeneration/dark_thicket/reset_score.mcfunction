scoreboard players set @s D_Oak_Log_Mined 0
scoreboard players set @s D_Oak_Wood_Mined 0
execute at @s if entity @e[type=armor_stand,tag=InParkFromDarkThicket,distance=..10] unless blocks 9648 74 9977 9644 69 9977 -356 103 -23 masked run function public_islands:map_regeneration/dark_thicket/fix_portal
function public_islands:map_regeneration/dark_thicket/check_tree_loop
