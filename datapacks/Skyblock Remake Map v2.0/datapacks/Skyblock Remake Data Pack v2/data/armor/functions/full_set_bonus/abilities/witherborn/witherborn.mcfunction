#If WitherSpeed is not initialized or the is below 0, set it to 0
execute unless score @s WitherSpeed matches 0.. run scoreboard players set @s WitherSpeed 4
#If WitherCooldown is not initialized or the value is higher than 600, set it to 0
execute unless score @s WitherCooldown matches 0..600 run scoreboard players set @s WitherCooldown 0

execute if score @s WitherCooldown matches 600 run function armor:full_set_bonus/abilities/witherborn/reset

#Add 1 to counter
execute if score @s WitherCooldown matches 0..599 run scoreboard players add @s WitherCooldown 1