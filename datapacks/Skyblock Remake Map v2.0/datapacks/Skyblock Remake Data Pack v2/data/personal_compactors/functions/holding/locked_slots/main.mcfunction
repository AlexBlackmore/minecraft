execute at @s if block ~ ~ ~ hopper run data merge block ~ ~ ~ {TransferCooldown:5}
execute at @s if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:5}
execute if entity @p[tag=!MoveUpdate] run tp @s ~ ~0.5 ~
execute if entity @p[tag=MoveUpdate] rotated ~ 0 run function menu:menu_distance
execute as @e[type=chest_minecart,tag=p4000,limit=1,distance=0..2,sort=nearest] run function personal_compactors:holding/locked_slots/p4000
execute as @e[type=chest_minecart,tag=p5000,limit=1,distance=0..2,sort=nearest] run function personal_compactors:holding/locked_slots/p5000
execute as @e[type=chest_minecart,tag=p6000,limit=1,distance=0..2,sort=nearest] run function personal_compactors:holding/locked_slots/p6000
execute as @e[type=chest_minecart,tag=p7000,limit=1,distance=0..2,sort=nearest] run function personal_compactors:holding/locked_slots/p7000
execute as @e[type=chest_minecart,tag=pcompactor,limit=1,distance=0..2,sort=nearest] if data entity @s Items[{id:"minecraft:nether_star",tag:{SkyblockMenu:1b}}] run data remove entity @s Items[{id:"minecraft:nether_star",tag:{SkyblockMenu:1b}}]