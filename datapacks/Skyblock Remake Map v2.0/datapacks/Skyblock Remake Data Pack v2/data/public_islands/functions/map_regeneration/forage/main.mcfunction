#/scoreboard objectives add Oak_Log_Mined minecraft.mined:minecraft.oak_log
#/scoreboard objectives add Oak_Wood_Mined minecraft.mined:minecraft.oak_wood
#/scoreboard objectives add Oak_Leaves_Mined minecraft.mined:minecraft.oak_leaves
#summon a cloud: summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusOnUse:-1f,Duration:2147483647,Tags:["OakTree"]}
execute as @a[scores={Oak_Log_Mined=1..}] at @s run function public_islands:map_regeneration/forage/reset_score
execute as @a[scores={Oak_Wood_Mined=1..}] at @s run function public_islands:map_regeneration/forage/reset_score
execute as @a[scores={Oak_Leaves_Mined=1..}] at @s run function public_islands:map_regeneration/forage/worldguard_leaves1
scoreboard players add @e[type=area_effect_cloud,tag=OakTree,scores={Date=1..}] Date 1
execute as @e[type=area_effect_cloud,tag=OakTree,scores={Date=901..}] at @s run function public_islands:map_regeneration/forage/regrow_check
execute as @e[type=area_effect_cloud,tag=OakTree,tag=!Forceloaded] at @s if entity @a[distance=..13] run function public_islands:map_regeneration/forage/add_forceload
execute as @e[type=area_effect_cloud,tag=OakTree,scores={Date=0},tag=Forceloaded] at @s unless entity @a[distance=..32] run function public_islands:map_regeneration/forage/remove_forceload
execute as @a at @s if entity @e[type=area_effect_cloud,tag=OakTree,distance=..13] run function public_islands:map_regeneration/forage/check_tool
