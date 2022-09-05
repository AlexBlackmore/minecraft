attribute @s[scores={spirit_amplifier=0}] minecraft:generic.movement_speed modifier add 14-19-28-73-32 "Spirit Potion" 0.1 multiply_base
attribute @s[scores={spirit_amplifier=1}] minecraft:generic.movement_speed modifier add 14-19-28-73-32 "Spirit Potion" 0.2 multiply_base
attribute @s[scores={spirit_amplifier=2}] minecraft:generic.movement_speed modifier add 14-19-28-73-32 "Spirit Potion" 0.3 multiply_base
attribute @s[scores={spirit_amplifier=3}] minecraft:generic.movement_speed modifier add 14-19-28-73-32 "Spirit Potion" 0.4 multiply_base


tellraw @s[scores={spirit_duration=200}] ["",{"text":"The effects of your Spirit Potion are about to wear off.","color":"red"}]
tellraw @s[scores={spirit_duration=1}] ["",{"text":"The effects of your Spirit Potion have worn off.","color":"red"}]
execute as @s[scores={spirit_duration=1..}] run scoreboard players remove @s spirit_duration 1
