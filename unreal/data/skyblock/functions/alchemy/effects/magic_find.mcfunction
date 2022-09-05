attribute @s[scores={magic_find_amplifier=0}] minecraft:generic.luck modifier add 26-73-79-74-10 "Magic Find Potion" 10 add
attribute @s[scores={magic_find_amplifier=1}] minecraft:generic.luck modifier add 26-73-79-74-10 "Magic Find Potion" 25 add
attribute @s[scores={magic_find_amplifier=2}] minecraft:generic.luck modifier add 26-73-79-74-10 "Magic Find Potion" 50 add
attribute @s[scores={magic_find_amplifier=3}] minecraft:generic.luck modifier add 26-73-79-74-10 "Magic Find Potion" 75 add


tellraw @s[scores={magic_find_duration=200}] ["",{"text":"The effects of your Magic Find Potion are about to wear off.","color":"red"}]
tellraw @s[scores={magic_find_duration=1}] ["",{"text":"The effects of your Magic Find Potion have worn off.","color":"red"}]
execute as @s[scores={magic_find_duration=1..}] run scoreboard players remove @s magic_find_duration 1