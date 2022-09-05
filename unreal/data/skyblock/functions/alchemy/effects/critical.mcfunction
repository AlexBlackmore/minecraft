attribute @s[tag=slayer_energy_drink] minecraft:generic.luck modifier add 46-53-98-27-78 "Critical Potion" 10 add

tellraw @s[scores={critical_duration=200}] ["",{"text":"The effects of your Critical Potion are about to wear off.","color":"red"}]
tellraw @s[scores={critical_duration=1}] ["",{"text":"The effects of your Critical Potion have worn off.","color":"red"}]
tag @s[scores={critical_duration=1},tag=slayer_energy_drink] remove slayer_energy_drink
attribute @s[tag=!slayer_energy_drink] minecraft:generic.luck modifier remove 46-53-98-27-78
execute as @s[scores={critical_duration=1..}] run scoreboard players remove @s critical_duration 1


