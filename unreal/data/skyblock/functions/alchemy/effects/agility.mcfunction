attribute @s[scores={agility_amplifier=0}] minecraft:generic.knockback_resistance modifier add 13-11-44-82-62 "Agility Potion" 0.1 add
attribute @s[scores={agility_amplifier=1}] minecraft:generic.knockback_resistance modifier add 13-11-44-82-62 "Agility Potion" 0.2 add
attribute @s[scores={agility_amplifier=2}] minecraft:generic.knockback_resistance modifier add 13-11-44-82-62 "Agility Potion" 0.3 add
attribute @s[scores={agility_amplifier=3}] minecraft:generic.knockback_resistance modifier add 13-11-44-82-62 "Agility Potion" 0.4 add


attribute @s[scores={agility_amplifier=0},tag=cheap_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.15 multiply_base
attribute @s[scores={agility_amplifier=1},tag=cheap_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.25 multiply_base
attribute @s[scores={agility_amplifier=2},tag=cheap_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.35 multiply_base
attribute @s[scores={agility_amplifier=3},tag=cheap_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.45 multiply_base

attribute @s[scores={agility_amplifier=0},tag=decent_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.18 multiply_base
attribute @s[scores={agility_amplifier=1},tag=decent_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.28 multiply_base
attribute @s[scores={agility_amplifier=2},tag=decent_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.38 multiply_base
attribute @s[scores={agility_amplifier=3},tag=decent_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.48 multiply_base

attribute @s[scores={agility_amplifier=0},tag=black_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.22 multiply_base
attribute @s[scores={agility_amplifier=1},tag=black_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.32 multiply_base
attribute @s[scores={agility_amplifier=2},tag=black_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.42 multiply_base

attribute @s[scores={agility_amplifier=0}] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.1 multiply_base
attribute @s[scores={agility_amplifier=1}] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.2 multiply_base
attribute @s[scores={agility_amplifier=2}] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.3 multiply_base
attribute @s[scores={agility_amplifier=3}] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.4 multiply_base


attribute @s[scores={agility_amplifier=3},tag=black_coffee_agility] minecraft:generic.movement_speed modifier add 66-94-70-19-30 "Agility Potion" 0.52 multiply_base


tellraw @s[scores={agility_duration=200}] ["",{"text":"The effects of your Agility Potion are about to wear off.","color":"red"}]
tellraw @s[scores={agility_duration=1}] ["",{"text":"The effects of your Agility Potion have worn off.","color":"red"}]
tag @s[scores={agility_duration=1},tag=cheap_coffee_agility] remove cheap_coffee_agility
tag @s[scores={agility_duration=1},tag=decent_coffee_agility] remove decent_coffee_agility
tag @s[scores={agility_duration=1},tag=black_coffee_agility] remove black_coffee_agility
execute as @s[scores={agility_duration=1..}] run scoreboard players remove @s agility_duration 1
