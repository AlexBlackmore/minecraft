attribute @s minecraft:generic.max_health modifier add 97-23-16-16-45 "Regeneration Potion" 0.05 multiply

execute unless data entity @s ActiveEffects[{Id:10}] run tag @s remove pulpous_orange_juice_regeneration

attribute @s[tag=!pulpous_orange_juice_regeneration] minecraft:generic.max_health modifier remove 97-23-16-16-45
tellraw @s[tag=!pulpous_orange_juice_regeneration] {"text":"The effects of your Pulpous Orange Juice have worn off!","color":"red"}