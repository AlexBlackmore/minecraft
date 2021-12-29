scoreboard objectives add tempest dummy "Tempest"
execute as @p[tag=bow] run execute store result score @s tempest run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:multishot"}].lvl

scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

execute store result score @p[tag=bow] x run data get entity @p[tag=bow] Pos[0] 100
execute store result score @p[tag=bow] y run data get entity @p[tag=bow] Pos[1] 100
execute store result score @p[tag=bow] z run data get entity @p[tag=bow] Pos[2] 100

execute at @p[tag=bow,scores={tempest=2..}] run summon arrow ~ ~1.7 ~ {Tags:["double_shot","calc"],Owner:[I;0,0,0,0],Fire:0s,PierceLevel:0b}
execute at @p[tag=bow,scores={tempest=3..}] run summon arrow ~ ~1.7 ~ {Tags:["triple_shot","calc"],Owner:[I;0,0,0,0],Fire:0s,PierceLevel:0b}
execute at @p[tag=bow,scores={tempest=4..}] run summon arrow ~ ~1.7 ~ {Tags:["quad_shot","calc"],Owner:[I;0,0,0,0],Fire:0s,PierceLevel:0b}
execute at @p[tag=bow,scores={tempest=5..}] run summon arrow ~ ~1.7 ~ {Tags:["penta_shot","calc"],Owner:[I;0,0,0,0],Fire:0s,PierceLevel:0b}

execute at @p[tag=bow,scores={tempest=2..}] run summon armor_stand ^-0.2 ^ ^1.8 {Tags:["double_shot","motion"]}
execute at @p[tag=bow,scores={tempest=3..}] run summon armor_stand ^0.2 ^ ^1.8 {Tags:["triple_shot","motion"]}
execute at @p[tag=bow,scores={tempest=4..}] run summon armor_stand ^-0.4 ^ ^1.8 {Tags:["quad_shot","motion"]}
execute at @p[tag=bow,scores={tempest=5..}] run summon armor_stand ^0.4 ^ ^1.8 {Tags:["penta_shot","motion"]}

execute store result score @e[type=arrow,tag=double_shot,limit=1] x run data get entity @e[type=armor_stand,tag=double_shot,limit=1] Pos[0] 100
execute store result score @e[type=arrow,tag=double_shot,limit=1] y run data get entity @e[type=armor_stand,tag=double_shot,limit=1] Pos[1] 100
execute store result score @e[type=arrow,tag=double_shot,limit=1] z run data get entity @e[type=armor_stand,tag=double_shot,limit=1] Pos[2] 100

execute store result score @e[type=arrow,tag=triple_shot,limit=1] x run data get entity @e[type=armor_stand,tag=triple_shot,limit=1] Pos[0] 100
execute store result score @e[type=arrow,tag=triple_shot,limit=1] y run data get entity @e[type=armor_stand,tag=triple_shot,limit=1] Pos[1] 100
execute store result score @e[type=arrow,tag=triple_shot,limit=1] z run data get entity @e[type=armor_stand,tag=triple_shot,limit=1] Pos[2] 100

execute store result score @e[type=arrow,tag=quad_shot,limit=1] x run data get entity @e[type=armor_stand,tag=quad_shot,limit=1] Pos[0] 100
execute store result score @e[type=arrow,tag=quad_shot,limit=1] y run data get entity @e[type=armor_stand,tag=quad_shot,limit=1] Pos[1] 100
execute store result score @e[type=arrow,tag=quad_shot,limit=1] z run data get entity @e[type=armor_stand,tag=quad_shot,limit=1] Pos[2] 100

execute store result score @e[type=arrow,tag=penta_shot,limit=1] x run data get entity @e[type=armor_stand,tag=penta_shot,limit=1] Pos[0] 100
execute store result score @e[type=arrow,tag=penta_shot,limit=1] y run data get entity @e[type=armor_stand,tag=penta_shot,limit=1] Pos[1] 100
execute store result score @e[type=arrow,tag=penta_shot,limit=1] z run data get entity @e[type=armor_stand,tag=penta_shot,limit=1] Pos[2] 100

kill @e[tag=motion]
tag @e[tag=double_shot] remove double_shot
tag @e[tag=triple_shot] remove triple_shot
tag @e[tag=quad_shot] remove quad_shot
tag @e[tag=penta_shot] remove penta_shot

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
tellraw @p[tag=bow] ["",{"text":"[Tempest: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

execute as @e[tag=calc] run execute store result entity @s PierceLevel byte 1 run data get entity @e[tag=shot,limit=1,sort=nearest] PierceLevel
execute as @e[tag=calc] run execute store result entity @s Fire short 1 run data get entity @e[tag=shot,limit=1,sort=nearest] Fire

playsound minecraft:entity.arrow.shoot player @p[tag=bow]
tag @e[tag=calc] add shot
tag @e[tag=shot] remove calc

scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z
scoreboard objectives remove tempest