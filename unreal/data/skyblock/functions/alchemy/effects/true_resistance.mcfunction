attribute @s[scores={true_resistance_amplifier=0}] minecraft:generic.armor_toughness modifier add 33-81-94-3-62 "True Resistance Potion" 1 add
attribute @s[scores={true_resistance_amplifier=1}] minecraft:generic.armor_toughness modifier add 33-81-94-3-62 "True Resistance Potion" 2 add
attribute @s[scores={true_resistance_amplifier=2}] minecraft:generic.armor_toughness modifier add 33-81-94-3-62 "True Resistance Potion" 3 add
attribute @s[scores={true_resistance_amplifier=3}] minecraft:generic.armor_toughness modifier add 33-81-94-3-62 "True Resistance Potion" 4 add


tellraw @s[scores={true_resistance_duration=200}] ["",{"text":"The effects of your True Resistance Potion are about to wear off.","color":"red"}]
tellraw @s[scores={true_resistance_duration=1}] ["",{"text":"The effects of your True Resistance Potion have worn off.","color":"red"}]
execute as @s[scores={true_resistance_duration=1..}] run scoreboard players remove @s true_resistance_duration 1