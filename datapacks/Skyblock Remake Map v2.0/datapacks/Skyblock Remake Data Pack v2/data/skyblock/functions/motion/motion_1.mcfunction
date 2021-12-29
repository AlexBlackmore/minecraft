summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:[TrigTemp]}
tp @e[tag=TrigTemp,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=TrigTemp,limit=1] at @s positioned 0.0 0.0 0.0 run function skyblock:motion/motion_2