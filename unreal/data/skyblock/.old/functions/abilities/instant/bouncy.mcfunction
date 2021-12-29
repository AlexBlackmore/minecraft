execute at @p[tag=bonus_damage] run tag @e[tag=!target,type=#skyblock:hostile,limit=1,sort=random] add bouncy

execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get

effect give @e[tag=bouncy] glowing 1
execute as @e[tag=bouncy] run execute store result score @s health run data get entity @s Health
execute as @e[tag=bouncy] run execute if score @s health < @p[tag=bonus_damage] attack_damage run kill @s
execute as @e[tag=bouncy] run scoreboard players operation @s health -= @p[tag=bonus_damage] attack_damage
execute as @e[tag=bouncy] run execute store result entity @s Health float 1 run scoreboard players get @s health

execute if entity @e[tag=bouncy] run tellraw @p[tag=bonus_damage] ["",{"text":"[@: Your arrow bounced to another target! (","italic":true,"color":"gray"},{"score":{"name":"*","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage)]","italic":true,"color":"gray"}]

tag @e[tag=bouncy] add bounced
tag @e[tag=bounced] remove bouncy
execute if entity @p[tag=bonus_damage,tag=bouncy_arrow,predicate=skyblock:random_chance50] run tag @e[tag=!bounced,type=#skyblock:hostile,limit=1,sort=random] add bouncy
tag @e[tag=bounced] remove bounced


#2nd bounce
execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 0.85

effect give @e[tag=bouncy] glowing 1
execute as @e[tag=bouncy] run execute store result score @s health run data get entity @s Health
execute as @e[tag=bouncy] run execute if score @s health < @p[tag=bonus_damage] attack_damage run kill @s
execute as @e[tag=bouncy] run scoreboard players operation @s health -= @p[tag=bonus_damage] attack_damage
execute as @e[tag=bouncy] run execute store result entity @s Health float 1 run scoreboard players get @s health

execute if entity @e[tag=bouncy] run tellraw @p[tag=bonus_damage] ["",{"text":"[@: Your arrow bounced to another target! (","italic":true,"color":"gray"},{"score":{"name":"*","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage)]","italic":true,"color":"gray"}]

tag @e[tag=bouncy] add bounced
tag @e[tag=bounced] remove bouncy
execute if entity @p[tag=bonus_damage,tag=bouncy_arrow,predicate=skyblock:random_chance50] run tag @e[tag=!bounced,type=#skyblock:hostile,limit=1,sort=random] add bouncy
tag @e[tag=bounced] remove bounced


#3rd bounce
execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 0.7

effect give @e[tag=bouncy] glowing 1
execute as @e[tag=bouncy] run execute store result score @s health run data get entity @s Health
execute as @e[tag=bouncy] run execute if score @s health < @p[tag=bonus_damage] attack_damage run kill @s
execute as @e[tag=bouncy] run scoreboard players operation @s health -= @p[tag=bonus_damage] attack_damage
execute as @e[tag=bouncy] run execute store result entity @s Health float 1 run scoreboard players get @s health

execute if entity @e[tag=bouncy] run tellraw @p[tag=bonus_damage] ["",{"text":"[@: Your arrow bounced to another target! (","italic":true,"color":"gray"},{"score":{"name":"*","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage)]","italic":true,"color":"gray"}]

tag @e[tag=bouncy] add bounced
tag @e[tag=bounced] remove bouncy
execute if entity @p[tag=bonus_damage,tag=bouncy_arrow,predicate=skyblock:random_chance50] run tag @e[tag=!bounced,type=#skyblock:hostile,limit=1,sort=random] add bouncy
tag @e[tag=bounced] remove bounced


#4th bounce
execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 0.55

effect give @e[tag=bouncy] glowing 1
execute as @e[tag=bouncy] run execute store result score @s health run data get entity @s Health
execute as @e[tag=bouncy] run execute if score @s health < @p[tag=bonus_damage] attack_damage run kill @s
execute as @e[tag=bouncy] run scoreboard players operation @s health -= @p[tag=bonus_damage] attack_damage
execute as @e[tag=bouncy] run execute store result entity @s Health float 1 run scoreboard players get @s health

execute if entity @e[tag=bouncy] run tellraw @p[tag=bonus_damage] ["",{"text":"[@: Your arrow bounced to another target! (","italic":true,"color":"gray"},{"score":{"name":"*","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage)]","italic":true,"color":"gray"}]

tag @e[tag=bouncy] remove bouncy