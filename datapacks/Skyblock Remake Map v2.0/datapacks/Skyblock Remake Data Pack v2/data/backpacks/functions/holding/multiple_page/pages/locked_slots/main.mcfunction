execute as @e[type=chest_minecart,tag=backpack,sort=nearest] at @s if block ~ ~ ~ hopper run data merge block ~ ~ ~ {TransferCooldown:5}
execute as @e[type=chest_minecart,tag=backpack,sort=nearest] at @s if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:5}
execute if entity @p[tag=!MoveUpdate] run tp @s ~ ~0.5 ~
execute if entity @p[tag=MoveUpdate] rotated ~ 0 run function menu:menu_distance
execute as @p if predicate backpacks:greater_backpack as @e[type=chest_minecart,tag=greater_backpack,limit=1,distance=0..2,sort=nearest] run function backpacks:holding/multiple_page/pages/locked_slots/greater/main
execute as @p if predicate backpacks:jumbo_backpack as @e[type=chest_minecart,tag=jumbo_backpack,limit=1,distance=0..2,sort=nearest] run function backpacks:holding/multiple_page/pages/locked_slots/jumbo/main