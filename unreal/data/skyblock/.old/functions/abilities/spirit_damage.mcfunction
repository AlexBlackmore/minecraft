scoreboard objectives add max_health dummy "Max Health"
scoreboard objectives add health dummy "Health"

execute as @p[tag=bonus_damage] run execute store result score @s health run data get entity @s Health 100
execute as @p[tag=bonus_damage] run execute store result score @s max_health run attribute @s minecraft:generic.max_health get

execute as @p[tag=bonus_damage] run scoreboard players operation @s health /= @s max_health

execute as @p[tag=bonus_damage] run scoreboard players set @s dummy 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s dummy -= @s health
execute as @p[tag=bonus_damage] run scoreboard players operation @s health = @s dummy
execute as @p[tag=bonus_damage] run scoreboard players operation @s health += @s health

execute as @p[tag=bonus_damage] run scoreboard players operation @s multiplier += @s health

tellraw @p[tag=bonus_damage] ["",{"text":"[Spirit Weapon: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"health"},"italic":true,"color":"gray"},{"text":"% damage]","italic":true,"color":"gray"}]