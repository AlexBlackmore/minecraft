function skyblock:reset_commands

effect give @p[predicate=skyblock:wearing_pumpkin_armor] resistance 9 0

attribute @p[predicate=skyblock:wearing_pumpkin_armor] minecraft:generic.attack_damage modifier add 798881313-616402189-469640523-874749491-17616151 "Pumpkin Armor Damage" 0.1 multiply_base
attribute @p[predicate=!skyblock:wearing_pumpkin_armor] minecraft:generic.attack_damage modifier remove 798881313-616402189-469640523-874749491-17616151

execute as @p if predicate skyblock:wearing_pumpkin_armor run schedule function skyblock:wearing_pumpkin_armor 4s
