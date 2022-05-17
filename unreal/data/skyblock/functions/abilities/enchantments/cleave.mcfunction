execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Cleave

execute at @e[tag=target] if entity @p[tag=attacker,scores={dummy=1}] run scoreboard players add @e[type=#minecraft:hostile,distance=0..3.3,tag=!target] multiplier 3
execute at @e[tag=target] if entity @p[tag=attacker,scores={dummy=2}] run scoreboard players add @e[type=#minecraft:hostile,distance=0..3.6,tag=!target] multiplier 6
execute at @e[tag=target] if entity @p[tag=attacker,scores={dummy=3}] run scoreboard players add @e[type=#minecraft:hostile,distance=0..3.9,tag=!target] multiplier 9
execute at @e[tag=target] if entity @p[tag=attacker,scores={dummy=4}] run scoreboard players add @e[type=#minecraft:hostile,distance=0..4.2,tag=!target] multiplier 12
execute at @e[tag=target] if entity @p[tag=attacker,scores={dummy=5}] run scoreboard players add @e[type=#minecraft:hostile,distance=0..4.5,tag=!target] multiplier 15
execute at @e[tag=target] if entity @p[tag=attacker,scores={dummy=6}] run scoreboard players add @e[type=#minecraft:hostile,distance=0..4.8,tag=!target] multiplier 20

tag @e[tag=!target,scores={multiplier=1..}] add target