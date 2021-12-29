scoreboard players add @e[type=area_effect_cloud,tag=ParkTree,scores={Date=1..}] Date 1
execute as @a[scores={Location=5}] at @s run function public_islands:map_regeneration/check_tool_park
execute as @e[type=area_effect_cloud,tag=ParkTree] run function public_islands:map_regeneration/tree_check

execute as @a[scores={B_Log_Mined=1..}] at @s run function public_islands:map_regeneration/birch_park/reset_score
execute as @a[scores={B_Wood_Mined=1..}] at @s run function public_islands:map_regeneration/birch_park/reset_score
execute as @a[scores={B_Leaves_Mined=1..}] at @s if entity @e[type=armor_stand,tag=hub_island,distance=..10] run function public_islands:map_regeneration/birch_park/worldguard_leaves1

execute as @a[scores={S_Log_Mined=1..}] at @s run function public_islands:map_regeneration/spruce_woods/reset_score
execute as @a[scores={S_Wood_Mined=1..}] at @s run function public_islands:map_regeneration/spruce_woods/reset_score
execute as @a[scores={S_Leaves_Mined=1..}] at @s if entity @e[type=armor_stand,tag=InParkFromSpruce,distance=..10] run function public_islands:map_regeneration/spruce_woods/worldguard_leaves1

execute as @a[scores={D_Oak_Log_Mined=1..}] at @s run function public_islands:map_regeneration/dark_thicket/reset_score
execute as @a[scores={D_Oak_Wood_Mined=1..}] at @s run function public_islands:map_regeneration/dark_thicket/reset_score

execute as @a[scores={A_Log_Mined=1..}] at @s run function public_islands:map_regeneration/savanna_woodland/reset_score
execute as @a[scores={A_Wood_Mined=1..}] at @s run function public_islands:map_regeneration/savanna_woodland/reset_score
execute as @a[scores={Oak_Leaves_Mined=1..}] at @s if entity @e[type=villager,tag=Melody,distance=..19] run function public_islands:map_regeneration/savanna_woodland/worldguard_leaves1

execute as @a[scores={J_Log_Mined=1..}] at @s run function public_islands:map_regeneration/jungle_island/reset_score
execute as @a[scores={J_Wood_Mined=1..}] at @s run function public_islands:map_regeneration/jungle_island/reset_score
execute as @a[scores={J_Leaves_Mined=1..}] at @s run function public_islands:map_regeneration/jungle_island/worldguard_leaves1
execute as @a[scores={Oak_Leaves_Mined=1..}] at @s unless entity @e[type=villager,tag=Melody,distance=..19] run function public_islands:map_regeneration/jungle_island/worldguard_leaves1
