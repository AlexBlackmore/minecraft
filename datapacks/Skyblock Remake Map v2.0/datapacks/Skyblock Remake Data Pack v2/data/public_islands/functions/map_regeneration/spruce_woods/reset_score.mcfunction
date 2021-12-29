scoreboard players set @s S_Log_Mined 0
scoreboard players set @s S_Wood_Mined 0
execute at @s if entity @e[type=armor_stand,tag=InParkFromSpruce,distance=..10] unless blocks 9664 61 9986 9664 55 9982 -336 89 -18 masked run function public_islands:map_regeneration/spruce_woods/fix_portal
function public_islands:map_regeneration/spruce_woods/check_tree_loop
