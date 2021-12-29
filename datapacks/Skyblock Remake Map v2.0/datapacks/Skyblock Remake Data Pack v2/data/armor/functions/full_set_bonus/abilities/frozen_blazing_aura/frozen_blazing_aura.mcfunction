#If FrozenBlazeTick is not initialized or the value is higher than 20, set it to 0
execute unless score @s FrozenBlazeTick matches 0..20 run scoreboard players set @s FrozenBlazeTick 0

#If the counter is equal 20, deal damage to nearby mobs and apply slowness to them
execute if score @s FrozenBlazeTick matches 20 run function armor:full_set_bonus/abilities/frozen_blazing_aura/effect

#Add 1 to counter
scoreboard players add @s FrozenBlazeTick 1

# Lava and fire immunity
execute if block ~ ~ ~ lava run effect give @s fire_resistance 1 10 true 
execute if block ~ ~ ~ fire run effect give @s fire_resistance 1 10 true 