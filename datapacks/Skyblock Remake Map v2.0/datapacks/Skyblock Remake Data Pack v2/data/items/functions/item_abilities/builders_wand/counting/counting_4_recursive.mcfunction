scoreboard players operation $Build_Count2 I_BWBlank_Score = $Build_Count I_BWBlank_Score
scoreboard players set $Build_Count I_BWBlank_Score 0
execute at @e[tag=Count4] if blocks ~-1 ~ ~ ~-1 ~ ~ ~-1 ~1 ~ all unless block ~-1 ~1 ~ #items:no_builder if block ~ ~1 ~ air positioned ~ ~1 ~ unless entity @e[tag=Count4,distance=...01] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["Count4"]}
execute at @e[tag=Count4] if blocks ~-1 ~ ~ ~-1 ~ ~ ~-1 ~-1 ~ all unless block ~-1 ~-1 ~ #items:no_builder if block ~ ~-1 ~ air positioned ~ ~-1 ~ unless entity @e[tag=Count4,distance=...01] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["Count4"]}
execute at @e[tag=Count4] if blocks ~-1 ~ ~ ~-1 ~ ~ ~-1 ~ ~1 all unless block ~-1 ~ ~1 #items:no_builder if block ~ ~ ~1 air positioned ~ ~ ~1 unless entity @e[tag=Count4,distance=...01] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["Count4"]}
execute at @e[tag=Count4] if blocks ~-1 ~ ~ ~-1 ~ ~ ~-1 ~ ~-1 all unless block ~-1 ~ ~-1 #items:no_builder if block ~ ~ ~-1 air positioned ~ ~ ~-1 unless entity @e[tag=Count4,distance=...01] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["Count4"]}
execute as @e[tag=Count4] run scoreboard players add $Build_Count I_BWBlank_Score 1
execute unless score $Build_Count2 I_BWBlank_Score = $Build_Count I_BWBlank_Score unless score $Build_Count I_BWBlank_Score matches 165.. run function items:item_abilities/builders_wand/counting/counting_4_recursive