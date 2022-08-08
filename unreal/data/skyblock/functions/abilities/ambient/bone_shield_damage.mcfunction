effect clear @s minecraft:resistance

effect give @s minecraft:resistance 15 0
effect give @s[tag=bone_shield1] minecraft:resistance 15 0
effect give @s[tag=bone_shield2] minecraft:resistance 15 1
effect give @s[tag=bone_shield3] minecraft:resistance 15 2

tag @s[tag=bone_shield1] remove bone_shield1

tag @s[tag=bone_shield2] add bone_shield1
tag @s[tag=bone_shield2] remove bone_shield2

tag @s[tag=bone_shield3] add bone_shield2
tag @s[tag=bone_shield3] remove bone_shield3

advancement revoke @s only skyblock:commands/abilities/bone_shield
