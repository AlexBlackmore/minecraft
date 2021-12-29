tag @p[advancements={skyblock:commands/instant/deflect=true}] add cactus_armor
execute at @p[tag=cactus_armor] run tag @e[limit=1,sort=nearest,type=#skyblock:hostile] add deflect
effect give @e[tag=deflect] glowing

scoreboard objectives add health dummy "Health"

execute as @p[tag=cactus_armor] run execute store result score @s attack_damage run attribute @s generic.attack_damage get 33

execute as @e[tag=deflect] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=deflect] run execute if score @s health < @p[tag=cactus_armor] attack_damage run kill @s
execute as @e[tag=deflect] run scoreboard players operation @s health -= @p[tag=cactus_armor] attack_damage
execute as @e[tag=deflect] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=cactus_armor] divisor 100
execute as @p[tag=cactus_armor] run scoreboard players operation @s attack_damage /= @s divisor
tellraw @p[tag=cactus_armor] ["",{"text":"[Deflect: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor
scoreboard objectives remove health

advancement revoke @p[tag=cactus_armor] only skyblock:commands/instant/deflect
tag @p[tag=cactus_armor] remove cactus_armor
tag @e[tag=deflect] remove deflect