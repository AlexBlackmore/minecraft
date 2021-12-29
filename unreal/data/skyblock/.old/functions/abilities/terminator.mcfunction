scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

execute store result score @p[tag=bow] x run data get entity @p[tag=bow] Pos[0] 100
execute store result score @p[tag=bow] y run data get entity @p[tag=bow] Pos[1] 100
execute store result score @p[tag=bow] z run data get entity @p[tag=bow] Pos[2] 100

execute at @p[tag=bow] run summon arrow ~ ~1.7 ~ {Tags:["triple_shot1","calc"],Owner:[I;0,0,0,0],Fire:0s,PierceLevel:0b}
execute at @p[tag=bow] run summon arrow ~ ~1.7 ~ {Tags:["triple_shot2","calc"],Owner:[I;0,0,0,0],Fire:0s,PierceLevel:0b}
execute at @p[tag=bow] run summon armor_stand ^-0.1 ^ ^1.8 {Tags:["triple_shot1","motion"]}
execute at @p[tag=bow] run summon armor_stand ^0.1 ^ ^1.8 {Tags:["triple_shot2","motion"]}

execute store result score @e[type=arrow,tag=triple_shot1,limit=1] x run data get entity @e[type=armor_stand,tag=triple_shot1,limit=1] Pos[0] 100
execute store result score @e[type=arrow,tag=triple_shot1,limit=1] y run data get entity @e[type=armor_stand,tag=triple_shot1,limit=1] Pos[1] 100
execute store result score @e[type=arrow,tag=triple_shot1,limit=1] z run data get entity @e[type=armor_stand,tag=triple_shot1,limit=1] Pos[2] 100

execute store result score @e[type=arrow,tag=triple_shot2,limit=1] x run data get entity @e[type=armor_stand,tag=triple_shot2,limit=1] Pos[0] 100
execute store result score @e[type=arrow,tag=triple_shot2,limit=1] y run data get entity @e[type=armor_stand,tag=triple_shot2,limit=1] Pos[1] 100
execute store result score @e[type=arrow,tag=triple_shot2,limit=1] z run data get entity @e[type=armor_stand,tag=triple_shot2,limit=1] Pos[2] 100

kill @e[tag=motion]
tag @e[tag=calc] remove triple_shot1
tag @e[tag=calc] remove triple_shot2

execute as @e[tag=calc] run scoreboard players operation @s x -= @p[tag=bow] x
execute as @e[tag=calc] run scoreboard players operation @s y -= @p[tag=bow] y
execute as @e[tag=calc] run scoreboard players operation @s z -= @p[tag=bow] z

execute as @e[tag=calc] run execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s x
execute as @e[tag=calc] run execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s y
execute as @e[tag=calc] run execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s z

execute as @e[tag=calc] run execute store result entity @s Owner[0] int 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Owner[0]
execute as @e[tag=calc] run execute store result entity @s Owner[1] int 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Owner[1]
execute as @e[tag=calc] run execute store result entity @s Owner[2] int 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Owner[2]
execute as @e[tag=calc] run execute store result entity @s Owner[3] int 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Owner[3]

execute as @e[tag=calc] run execute store result entity @s damage double 0.1 run data get entity @e[tag=shot,limit=1,sort=nearest] damage
execute store result score @p[tag=bow] damage run data get entity @e[tag=shot,limit=1,sort=nearest] damage

execute as @e[tag=calc] run execute store result entity @s PierceLevel byte 1 run data get entity @e[tag=shot,limit=1,sort=nearest] PierceLevel
execute as @e[tag=calc] run execute store result entity @s Fire short 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Fire

playsound minecraft:entity.arrow.shoot player @p[tag=bow]
tag @e[tag=calc] add shot
tag @e[tag=shot] remove calc

scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z