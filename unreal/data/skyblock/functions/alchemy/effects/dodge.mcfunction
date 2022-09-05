attribute @s[scores={dodge_amplifier=0}] minecraft:generic.knockback_resistance modifier add 43-54-81-73-78 "Dodge Potion" 0.1 add
attribute @s[scores={dodge_amplifier=1}] minecraft:generic.knockback_resistance modifier add 43-54-81-73-78 "Dodge Potion" 0.2 add
attribute @s[scores={dodge_amplifier=2}] minecraft:generic.knockback_resistance modifier add 43-54-81-73-78 "Dodge Potion" 0.3 add
attribute @s[scores={dodge_amplifier=3}] minecraft:generic.knockback_resistance modifier add 43-54-81-73-78 "Dodge Potion" 0.4 add


tellraw @s[scores={dodge_duration=200}] ["",{"text":"The effects of your Dodge Potion are about to wear off.","color":"red"}]
tellraw @s[scores={dodge_duration=1}] ["",{"text":"The effects of your Dodge Potion have worn off.","color":"red"}]
execute as @s[scores={dodge_duration=1..}] run scoreboard players remove @s dodge_duration 1
