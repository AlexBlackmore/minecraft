#If MastiffCooldown is not initialized or the value is higher than 20, set it to 0
execute unless score @s MastiffCooldown matches 0..20 run scoreboard players set @s MastiffCooldown 0

#Add 1 to counter
execute if score @s MastiffCooldown matches 0..19 run scoreboard players add @s MastiffCooldown 1