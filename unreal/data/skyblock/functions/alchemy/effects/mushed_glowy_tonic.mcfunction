tellraw @s[scores={mushed_glowy_tonic_duration=200}] ["",{"text":"The effects of your Mushed Glowy Tonic are about to wear off.","color":"red"}]
tellraw @s[scores={mushed_glowy_tonic_duration=1}] ["",{"text":"The effects of your Mushed Glowy Tonic have worn off.","color":"red"}]
execute as @s[scores={mushed_glowy_tonic_duration=1..}] run scoreboard players remove @s mushed_glowy_tonic_duration 1