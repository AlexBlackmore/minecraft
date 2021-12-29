attribute @p[tag=instant_transmission] minecraft:generic.movement_speed modifier remove 71-45-2-79-79
tellraw @p[tag=instant_transmission] {"text":"[Instant Transmission: -50% Speed]","italic":true,"color":"gray"}

attribute @p[tag=instant_transmission,tag=strong_blood] minecraft:generic.attack_damage modifier remove 44-48-54-56-99
tellraw @p[tag=instant_transmission,tag=strong_blood] {"text":"[Strong Blood: -1 Attack Damage]","italic":true,"color":"gray"}

tag @p[tag=instant_transmission] remove instant_transmission
tag @p[tag=strong_blood] remove strong_blood