#If FrozenBlazeTick is not initialized or the value is higher than 200, set it to 0
execute unless score @s UnstableDragTick matches 0..200 run scoreboard players set @s UnstableDragTick 0

#If the counter is equal 200, deal damage to nearby mobs and apply slowness to them
execute if score @s UnstableDragTick matches 200 run execute as @e[tag=HasHealthDisplay, distance=..7] run function armor:full_set_bonus/abilities/unstable_blood/lightningbolt

#Add 1 to counter
scoreboard players add @s UnstableDragTick 1