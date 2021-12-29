execute at @s if block ~ ~ ~ hopper run data merge block ~ ~ ~ {TransferCooldown:5}
execute at @s if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:5}
execute if entity @p[tag=!MoveUpdate] run tp @s ~ ~0.5 ~
execute if entity @p[tag=MoveUpdate] rotated ~ 0 run function menu:menu_distance
execute as @e[type=chest_minecart,tag=small_backpack,limit=1,distance=0..2,sort=nearest] run function backpacks:holding/single_page/locked_slots/small
execute as @e[type=chest_minecart,tag=medium_backpack,limit=1,distance=0..2,sort=nearest] run function backpacks:holding/single_page/locked_slots/medium