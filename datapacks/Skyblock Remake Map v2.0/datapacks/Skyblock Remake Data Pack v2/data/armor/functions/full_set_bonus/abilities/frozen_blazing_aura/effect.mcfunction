#Make player immune to fire/lava
effect give @s minecraft:fire_resistance 1 0

#Apply slowness effect to all mobs around the player
effect give @e[tag=HasHealthDisplay, distance=..5] minecraft:slowness 4 0
#Deal damage to these mobs
function armor:full_set_bonus/abilities/frozen_blazing_aura/collection
execute as @e[tag=HasHealthDisplay, distance=..5] run function armor:full_set_bonus/abilities/frozen_blazing_aura/damage
#Summoning particles at player's location
particle flame ~ ~ ~ 0.2 0.5 0.2 0 20