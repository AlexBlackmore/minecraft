summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["1raycast"]}
execute store result score $Build_Compare I_BWBuild_x1 run data get entity @e[tag=1raycast,limit=1,sort=nearest] Pos[0] 1000000
execute store result score $Build_Compare I_BWBuild_y1 run data get entity @e[tag=1raycast,limit=1,sort=nearest] Pos[1] 1000000
execute store result score $Build_Compare I_BWBuild_z1 run data get entity @e[tag=1raycast,limit=1,sort=nearest] Pos[2] 1000000
execute store result score $Build_Compare I_BWBuild_x2 run data get entity @e[tag=0raycast,limit=1,sort=nearest] Pos[0] 1000000
execute store result score $Build_Compare I_BWBuild_y2 run data get entity @e[tag=0raycast,limit=1,sort=nearest] Pos[1] 1000000
execute store result score $Build_Compare I_BWBuild_z2 run data get entity @e[tag=0raycast,limit=1,sort=nearest] Pos[2] 1000000


scoreboard players operation $Build_Compare I_BWBuild_x1 -= $Build_Compare I_BWBuild_x2
scoreboard players operation $Build_Compare I_BWBuild_y1 -= $Build_Compare I_BWBuild_y2
scoreboard players operation $Build_Compare I_BWBuild_z1 -= $Build_Compare I_BWBuild_z2

scoreboard players operation $Build_Compare I_BWBuild_x2 = $Build_Compare I_BWBuild_x1
scoreboard players operation $Build_Compare I_BWBuild_y2 = $Build_Compare I_BWBuild_y1
scoreboard players operation $Build_Compare I_BWBuild_z2 = $Build_Compare I_BWBuild_z1

execute if score $Build_Compare I_BWBuild_x1 matches ..-1 run scoreboard players operation $Build_Compare I_BWBuild_x1 *= c-1 Constant
execute if score $Build_Compare I_BWBuild_y1 matches ..-1 run scoreboard players operation $Build_Compare I_BWBuild_y1 *= c-1 Constant
execute if score $Build_Compare I_BWBuild_z1 matches ..-1 run scoreboard players operation $Build_Compare I_BWBuild_z1 *= c-1 Constant

execute if score $Build_Compare I_BWBuild_x1 > $Build_Compare I_BWBuild_z1 if score $Build_Compare I_BWBuild_x1 > $Build_Compare I_BWBuild_y1 run scoreboard players set $Face I_BWBlank_Score 1
execute if score $Build_Compare I_BWBuild_y1 > $Build_Compare I_BWBuild_x1 if score $Build_Compare I_BWBuild_y1 > $Build_Compare I_BWBuild_z1 run scoreboard players set $Face I_BWBlank_Score 2
execute if score $Build_Compare I_BWBuild_z1 > $Build_Compare I_BWBuild_x1 if score $Build_Compare I_BWBuild_z1 > $Build_Compare I_BWBuild_y1 run scoreboard players set $Face I_BWBlank_Score 3
execute if score $Build_Compare I_BWBuild_x2 matches ..-1 if score $Face I_BWBlank_Score matches 1 run scoreboard players add $Face I_BWBlank_Score 3
execute if score $Build_Compare I_BWBuild_y2 matches ..-1 if score $Face I_BWBlank_Score matches 2 run scoreboard players add $Face I_BWBlank_Score 3
execute if score $Build_Compare I_BWBuild_z2 matches ..-1 if score $Face I_BWBlank_Score matches 3 run scoreboard players add $Face I_BWBlank_Score 3
execute at @e[tag=0raycast] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["Count1","Count2","Count3","Count4","Count5","Count6","CountAll"]}
kill @e[tag=0raycast]
kill @e[tag=1raycast]
execute if score $Face I_BWBlank_Score matches 1 if block ~1 ~ ~ #items:no_builder run scoreboard players set $Face I_BWBlank_Score 0
execute if score $Face I_BWBlank_Score matches 2 if block ~ ~1 ~ #items:no_builder run scoreboard players set $Face I_BWBlank_Score 0
execute if score $Face I_BWBlank_Score matches 3 if block ~ ~ ~1 #items:no_builder run scoreboard players set $Face I_BWBlank_Score 0
execute if score $Face I_BWBlank_Score matches 4 if block ~-1 ~ ~ #items:no_builder run scoreboard players set $Face I_BWBlank_Score 0
execute if score $Face I_BWBlank_Score matches 5 if block ~ ~-1 ~ #items:no_builder run scoreboard players set $Face I_BWBlank_Score 0
execute if score $Face I_BWBlank_Score matches 6 if block ~ ~ ~-1 #items:no_builder run scoreboard players set $Face I_BWBlank_Score 0
execute if score $Face I_BWBlank_Score matches 1.. run function items:item_abilities/builders_wand/click/steps/step1
execute if score $Face I_BWBlank_Score matches 0 run tellraw @s {"text":"Cannot Grand Architect this block!","color":"red"}
kill @e[tag=Count1]
kill @e[tag=Count2]
kill @e[tag=Count3]
kill @e[tag=Count4]
kill @e[tag=Count5]
kill @e[tag=Count6]