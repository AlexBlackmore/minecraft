attribute @s minecraft:generic.attack_damage modifier add 14-10-80-8-14 "Jerry Candy" 4 add
attribute @s minecraft:generic.luck modifier add 35-58-7-89-97 "Jerry Candy" 3 add

tellraw @s[scores={jerry_candy_duration=200}] ["",{"text":"The effects of your Jerry Candy are about to wear off.","color":"red"}]
tellraw @s[scores={jerry_candy_duration=1}] ["",{"text":"The effects of your Jerry Candy have worn off.","color":"red"}]
execute as @s[scores={jerry_candy_duration=1..}] run scoreboard players remove @s jerry_candy_duration 1