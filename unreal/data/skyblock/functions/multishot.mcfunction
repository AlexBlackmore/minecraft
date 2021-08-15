execute as @p at @s run summon dragon_fireball ^ ^1.5 ^ {NoGravity:true,Tags:["shooting_dragon_fireball"]}
execute as @p at @s positioned 0 0 0 run summon minecraft:armor_stand ^ ^ ^1 {NoGravity:true,Tags:["shooting_dragon_fireball"]}

execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] Motion[0] double 0.1 run data get entity @e[type=armor_stand,tag=shooting_dragon_fireball,limit=1] Pos[0]
execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] Motion[1] double 0.1 run data get entity @e[type=armor_stand,tag=shooting_dragon_fireball,limit=1] Pos[1]
execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] Motion[2] double 0.1 run data get entity @e[type=armor_stand,tag=shooting_dragon_fireball,limit=1] Pos[2]

execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] power[0] double 0.1 run data get entity @e[type=armor_stand,tag=shooting_dragon_fireball,limit=1] Pos[0]
execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] power[1] double 0.1 run data get entity @e[type=armor_stand,tag=shooting_dragon_fireball,limit=1] Pos[1]
execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] power[2] double 0.1 run data get entity @e[type=armor_stand,tag=shooting_dragon_fireball,limit=1] Pos[2]

execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] Owner[0] int 1 run data get entity @p UUID[0]
execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] Owner[1] int 1 run data get entity @p UUID[1]
execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] Owner[2] int 1 run data get entity @p UUID[2]
execute store result entity @e[type=dragon_fireball,tag=shooting_dragon_fireball,limit=1] Owner[3] int 1 run data get entity @p UUID[3]

kill @e[type=armor_stand,tag=shooting_dragon_fireball]
tag @e[type=dragon_fireball,tag=shooting_dragon_fireball] remove shooting_dragon_fireball