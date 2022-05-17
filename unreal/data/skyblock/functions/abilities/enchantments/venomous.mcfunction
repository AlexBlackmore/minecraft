execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Venomous

execute if entity @p[tag=attacker,scores={dummy=1}] run effect give @e[tag=target] minecraft:slowness 5 0
execute if entity @p[tag=attacker,scores={dummy=1}] run effect give @e[tag=target] minecraft:poison 5 0

execute if entity @p[tag=attacker,scores={dummy=2}] run effect give @e[tag=target] minecraft:slowness 5 1
execute if entity @p[tag=attacker,scores={dummy=2}] run effect give @e[tag=target] minecraft:poison 5 1

execute if entity @p[tag=attacker,scores={dummy=3}] run effect give @e[tag=target] minecraft:slowness 5 2
execute if entity @p[tag=attacker,scores={dummy=3}] run effect give @e[tag=target] minecraft:poison 5 2

execute if entity @p[tag=attacker,scores={dummy=4}] run effect give @e[tag=target] minecraft:slowness 5 3
execute if entity @p[tag=attacker,scores={dummy=4}] run effect give @e[tag=target] minecraft:poison 5 3

execute if entity @p[tag=attacker,scores={dummy=5}] run effect give @e[tag=target] minecraft:slowness 5 4
execute if entity @p[tag=attacker,scores={dummy=5}] run effect give @e[tag=target] minecraft:poison 5 4

execute if entity @p[tag=attacker,scores={dummy=6}] run effect give @e[tag=target] minecraft:slowness 5 5
execute if entity @p[tag=attacker,scores={dummy=6}] run effect give @e[tag=target] minecraft:poison 5 5