execute at @e[tag=juju_shortbow,tag=target] run tag @e[type=#skyblock:hostile,tag=!target,distance=0..3,limit=3,sort=random] add juju_shortbow

execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
tellraw @p[tag=bonus_damage] ["",{"text":"[Juju Shortbow: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

execute if entity @e[tag=juju_shortbow,tag=!target] run execute at @p[tag=bonus_damage] run playsound minecraft:entity.experience_orb.pickup player @p
effect give @e[tag=juju_shortbow] glowing 1
execute as @e[tag=juju_shortbow] run execute store result score @s health run data get entity @s Health
execute as @e[tag=juju_shortbow] run execute if score @s health < @p[tag=bonus_damage] attack_damage run kill @s
execute as @e[tag=juju_shortbow] run scoreboard players operation @s health -= @p[tag=bonus_damage] attack_damage
execute as @e[tag=juju_shortbow] run execute store result entity @s Health float 1 run scoreboard players get @s health

kill @e[tag=juju_shortbow,tag=target]
tag @e[tag=juju_shortbow] remove juju_shortbow