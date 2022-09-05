attribute @s[tag=cheap_coffee_swiftness] minecraft:generic.movement_speed modifier add 59-2-95-53-88 "Swiftness Potion" 0.05 multiply_base
attribute @s[tag=decent_coffee_swiftness] minecraft:generic.movement_speed modifier add 59-2-95-53-88 "Swiftness Potion" 0.08 multiply_base
attribute @s[tag=black_coffee_swiftness] minecraft:generic.movement_speed modifier add 59-2-95-53-88 "Swiftness Potion" 0.12 multiply_base

execute unless data entity @s[tag=cheap_coffee_swiftness] ActiveEffects[{Id:1}] run tag @s remove cheap_coffee_swiftness
execute unless data entity @s[tag=decent_coffee_swiftness] ActiveEffects[{Id:1}] run tag @s remove decent_coffee_swiftness
execute unless data entity @s[tag=black_coffee_swiftness] ActiveEffects[{Id:1}] run tag @s remove black_coffee_swiftness

attribute @s[tag=!cheap_coffee_swiftness,tag=!decent_coffee_swiftness,tag=!black_coffee_swiftness] minecraft:generic.movement_speed modifier remove 59-2-95-53-88
tellraw @s[tag=!cheap_coffee_swiftness,tag=!decent_coffee_swiftness,tag=!black_coffee_swiftness] {"text":"The effects of your Coffee have worn off!","color":"red"}