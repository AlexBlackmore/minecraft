scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

execute store result score @p[tag=bow] x run data get entity @p[tag=bow] Pos[0] 100
execute store result score @p[tag=bow] y run data get entity @p[tag=bow] Pos[1] 100
execute store result score @p[tag=bow] z run data get entity @p[tag=bow] Pos[2] 100

execute at @p[tag=bow] run summon wither_skull ~ ~1.4 ~ {Tags:["calc"],Fire:0s,Owner:[I;0,0,0,0]}
execute at @p[tag=bow] run summon armor_stand ^ ^ ^0.7 {Tags:["motion"]}

execute store result score @e[tag=calc,limit=1] x run data get entity @e[tag=motion,limit=1] Pos[0] 100
execute store result score @e[tag=calc,limit=1] y run data get entity @e[tag=motion,limit=1] Pos[1] 100
execute store result score @e[tag=calc,limit=1] z run data get entity @e[tag=motion,limit=1] Pos[2] 100

kill @e[tag=motion]

execute as @e[tag=calc] run scoreboard players operation @s x -= @p[tag=bow] x
execute as @e[tag=calc] run scoreboard players operation @s y -= @p[tag=bow] y
execute as @e[tag=calc] run scoreboard players operation @s z -= @p[tag=bow] z

execute as @e[tag=calc] run execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s x
execute as @e[tag=calc] run execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s y
execute as @e[tag=calc] run execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s z

execute as @e[tag=calc] run execute store result entity @s power[0] double 0.001 run scoreboard players get @s x
execute as @e[tag=calc] run execute store result entity @s power[1] double 0.001 run scoreboard players get @s y
execute as @e[tag=calc] run execute store result entity @s power[2] double 0.001 run scoreboard players get @s z

execute as @e[tag=calc] run execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Rotation[0]
execute as @e[tag=calc] run execute store result entity @s Rotation[1] float 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Rotation[1]

execute as @e[tag=calc] run execute store result entity @s Owner[0] int 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Owner[0]
execute as @e[tag=calc] run execute store result entity @s Owner[1] int 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Owner[1]
execute as @e[tag=calc] run execute store result entity @s Owner[2] int 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Owner[2]
execute as @e[tag=calc] run execute store result entity @s Owner[3] int 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Owner[3]

execute as @e[tag=calc] run execute store result entity @s Fire short 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Fire
kill @e[tag=shot,limit=1,sort=nearest]

execute at @p[tag=bow] run playsound minecraft:entity.wither.shoot player @p
tag @e[tag=calc] add shot
tag @e[tag=shot] remove calc

scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z