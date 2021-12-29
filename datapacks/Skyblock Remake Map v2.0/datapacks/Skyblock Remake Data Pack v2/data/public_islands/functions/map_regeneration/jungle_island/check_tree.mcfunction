tag @s add Checked_Temp
execute if score @s NPC_Skin matches 1 unless blocks ~10005 ~86 ~10005 ~9995 ~76 ~9995 ~-5 ~ ~-5 masked run function public_islands:map_regeneration/jungle_island/found_tree
execute if score @s NPC_Skin matches 2 unless blocks ~10001 ~1 ~10003 ~9999 ~ ~9997 ~-1 ~ ~-3 masked run function public_islands:map_regeneration/jungle_island/found_tree
execute if score @s NPC_Skin matches 3 unless blocks ~10003 ~1 ~10001 ~9997 ~ ~9999 ~-3 ~ ~-1 masked run function public_islands:map_regeneration/jungle_island/found_tree
