attribute @s[scores={rabbit_amplifier=0},tag=cheap_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.15 multiply_base
attribute @s[scores={rabbit_amplifier=1},tag=cheap_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.25 multiply_base
attribute @s[scores={rabbit_amplifier=2},tag=cheap_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.35 multiply_base
attribute @s[scores={rabbit_amplifier=3},tag=cheap_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.45 multiply_base
attribute @s[scores={rabbit_amplifier=4},tag=cheap_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.55 multiply_base
attribute @s[scores={rabbit_amplifier=5},tag=cheap_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.65 multiply_base

attribute @s[scores={rabbit_amplifier=0},tag=decent_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.18 multiply_base
attribute @s[scores={rabbit_amplifier=1},tag=decent_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.28 multiply_base
attribute @s[scores={rabbit_amplifier=2},tag=decent_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.38 multiply_base
attribute @s[scores={rabbit_amplifier=3},tag=decent_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.48 multiply_base
attribute @s[scores={rabbit_amplifier=4},tag=decent_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.58 multiply_base
attribute @s[scores={rabbit_amplifier=5},tag=decent_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.68 multiply_base

attribute @s[scores={rabbit_amplifier=0},tag=black_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.22 multiply_base
attribute @s[scores={rabbit_amplifier=1},tag=black_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.32 multiply_base
attribute @s[scores={rabbit_amplifier=2},tag=black_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.42 multiply_base
attribute @s[scores={rabbit_amplifier=3},tag=black_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.52 multiply_base
attribute @s[scores={rabbit_amplifier=4},tag=black_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.62 multiply_base
attribute @s[scores={rabbit_amplifier=5},tag=black_coffee_rabbit] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.72 multiply_base

attribute @s[scores={rabbit_amplifier=0}] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.1 multiply_base
attribute @s[scores={rabbit_amplifier=1}] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.2 multiply_base
attribute @s[scores={rabbit_amplifier=2}] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.3 multiply_base
attribute @s[scores={rabbit_amplifier=3}] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.4 multiply_base
attribute @s[scores={rabbit_amplifier=4}] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.5 multiply_base
attribute @s[scores={rabbit_amplifier=5}] minecraft:generic.movement_speed modifier add 37-15-40-10-70 "Rabbit Potion" 0.6 multiply_base


tellraw @s[scores={rabbit_duration=200}] ["",{"text":"The effects of your Rabbit Potion are about to wear off.","color":"red"}]
tellraw @s[scores={rabbit_duration=1}] ["",{"text":"The effects of your Rabbit Potion have worn off.","color":"red"}]
tag @s[scores={rabbit_duration=1},tag=cheap_coffee_rabbit] remove cheap_coffee_rabbit
tag @s[scores={rabbit_duration=1},tag=decent_coffee_rabbit] remove decent_coffee_rabbit
tag @s[scores={rabbit_duration=1},tag=black_coffee_rabbit] remove black_coffee_rabbit
execute as @s[scores={rabbit_duration=1..}] run scoreboard players remove @s rabbit_duration 1