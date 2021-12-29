scoreboard players set Global ExperienceXP 0
execute as @e[type=minecraft:experience_orb,nbt={Age:0s},distance=..10] store result score @s ExperienceXP run data get entity @s Value
execute as @e[type=minecraft:experience_orb,nbt={Age:0s},distance=..10] run scoreboard players operation Global ExperienceXP += @s ExperienceXP
execute at @e[type=minecraft:experience_orb,nbt={Age:0s},sort=random,limit=1,distance=..10] if score Global ExperienceXP matches 8.. run function enchanting:xp/summon/8
execute at @e[type=minecraft:experience_orb,nbt={Age:0s},sort=random,limit=1,distance=..10] if score Global ExperienceXP matches 4.. run function enchanting:xp/summon/4
execute at @e[type=minecraft:experience_orb,nbt={Age:0s},sort=random,limit=1,distance=..10] if score Global ExperienceXP matches 1.. run function enchanting:xp/summon/1