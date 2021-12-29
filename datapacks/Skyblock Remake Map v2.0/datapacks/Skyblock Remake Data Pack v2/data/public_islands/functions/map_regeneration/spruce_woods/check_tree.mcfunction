tag @s add Checked_Temp
execute if score @s NPC_Skin matches 1 unless blocks ~10000 ~86 ~10000 ~10000 ~76 ~10000 ~ ~ ~ masked run function public_islands:map_regeneration/spruce_woods/found_tree
execute if score @s NPC_Skin matches 2 unless blocks ~10001 ~1 ~10003 ~9999 ~ ~9997 ~-1 ~ ~-3 masked run function public_islands:map_regeneration/spruce_woods/found_tree
execute if score @s NPC_Skin matches 3 unless blocks ~10003 ~1 ~10001 ~9997 ~ ~9999 ~-3 ~ ~-1 masked run function public_islands:map_regeneration/spruce_woods/found_tree
execute if score @s NPC_Skin matches 4 unless blocks ~10001 ~86 ~10001 ~9999 ~76 ~9999 ~-1 ~ ~-1 masked run function public_islands:map_regeneration/spruce_woods/found_tree
