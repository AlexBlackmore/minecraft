attribute @s minecraft:generic.attack_damage modifier add 83-18-13-92-34 "Strength Potion" 0.05 multiply

execute unless data entity @s ActiveEffects[{Id:5}] run tag @s remove knockoff_cola

attribute @s[tag=!knockoff_cola] minecraft:generic.max_health modifier remove 83-18-13-92-34
tellraw @s[tag=!knockoff_cola] {"text":"The effects of your KnockOff Cola have worn off!","color":"red"}