attribute @s[pulpous_orange_juice_stamina] minecraft:generic.max_health modifier add 43-98-58-37-46 "Stamina Potion" 0.05 multiply

tellraw @s[scores={stamina_duration=200}] ["",{"text":"The effects of your Stamina Potion are about to wear off.","color":"red"}]
tellraw @s[scores={stamina_duration=1}] ["",{"text":"The effects of your Stamina Potion have worn off.","color":"red"}]
tag @s[scores={stamina_duration=1},tag=pulpous_orange_juice_stamina] remove pulpous_orange_juice_stamina
tag @s[scores={stamina_duration=1},tag=bitter_iced_tea_stamina] remove bitter_iced_tea_stamina
attribute @s[tag=!pulpous_orange_juice_stamina] minecraft:generic.max_health modifier remove 43-98-58-37-46
execute as @s[scores={stamina_duration=1..}] run scoreboard players remove @s stamina_duration 1



