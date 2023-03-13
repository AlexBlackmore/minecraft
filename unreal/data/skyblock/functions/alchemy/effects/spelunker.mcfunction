tellraw @s[scores={spelunker_duration=200}] ["",{"text":"The effects of your Spelunker Potion are about to wear off.","color":"red"}]
tellraw @s[scores={spelunker_duration=1}] ["",{"text":"The effects of your Spelunker Potion have worn off.","color":"red"}]
execute as @s[scores={spelunker_duration=1..}] run scoreboard players remove @s spelunker_duration 1