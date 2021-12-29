tag @s add Checked_Temp
execute if score @s NPC_Skin matches 1 unless blocks ~10006 ~11 ~10006 ~10000 ~3 ~10000 ~-3 ~ ~-3 masked run function public_islands:map_regeneration/forage/found_tree
execute if score @s NPC_Skin matches 2 unless blocks ~10004 ~5 ~10004 ~10002 ~3 ~10002 ~-1 ~ ~-1 masked run function public_islands:map_regeneration/forage/found_tree
execute if score @s NPC_Skin matches 3 unless blocks ~10004 ~4 ~10008 ~10002 ~3 ~9998 ~-1 ~ ~-5 masked run function public_islands:map_regeneration/forage/found_tree
execute if score @s NPC_Skin matches 4..5 unless blocks ~10008 ~4 ~10004 ~9998 ~3 ~10002 ~-5 ~ ~-1 masked run function public_islands:map_regeneration/forage/found_tree
