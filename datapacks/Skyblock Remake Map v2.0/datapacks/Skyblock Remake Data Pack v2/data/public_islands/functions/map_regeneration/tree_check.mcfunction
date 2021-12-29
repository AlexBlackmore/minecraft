execute if score @s Date matches 901.. at @s run function public_islands:map_regeneration/check_tree_park
execute unless entity @s[tag=Forceloaded] at @s if entity @a[distance=..20] run function public_islands:map_regeneration/add_forceload_park
execute if entity @s[tag=Forceloaded] at @s unless entity @a[distance=..128] run function public_islands:map_regeneration/remove_forceload_park