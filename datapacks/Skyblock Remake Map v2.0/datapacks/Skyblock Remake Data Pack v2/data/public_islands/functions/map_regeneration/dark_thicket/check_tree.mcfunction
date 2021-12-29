tag @s add Checked_Temp
execute if score @s NPC_Skin matches 1 unless blocks ~10003 ~86 ~10003 ~9997 ~76 ~9997 ~ ~ ~ masked run function public_islands:map_regeneration/dark_thicket/found_tree
execute if score @s NPC_Skin matches 2 unless blocks ~10001 ~1 ~10001 ~9999 ~ ~9999 -345 103 -40 masked run function public_islands:map_regeneration/dark_thicket/found_tree
execute if score @s NPC_Skin matches 3 unless blocks ~10001 ~1 ~10003 ~9999 ~ ~9997 ~-1 ~ ~-3 masked run function public_islands:map_regeneration/dark_thicket/found_tree
