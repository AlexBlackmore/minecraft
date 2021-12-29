scoreboard players set @s B_Log_Mined 0
scoreboard players set @s B_Wood_Mined 0
execute at @s if entity @e[type=armor_stand,tag=hub_island,distance=..10] unless blocks 9726 52 9988 9726 48 9984 -274 82 -16 masked run function public_islands:map_regeneration/birch_park/fix_portal
function public_islands:map_regeneration/birch_park/check_tree_loop
