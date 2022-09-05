attribute @s minecraft:generic.armor modifier add 34-97-24-21-60 "Resistance Potion" 2 add

execute unless data entity @s ActiveEffects[{Id:1}] run tag @s remove tepid_green_tea

attribute @s[tag=!tepid_green_tea] minecraft:generic.armor modifier remove 34-97-24-21-60
tellraw @s[tag=!tepid_green_tea] {"text":"The effects of your Tepid Green Tea have worn off!","color":"red"}