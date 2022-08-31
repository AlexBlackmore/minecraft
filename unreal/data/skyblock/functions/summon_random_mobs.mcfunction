execute store result score @s time run time query gametime
scoreboard players set @s dummy 79
scoreboard players operation @s time %= @s dummy 

execute if entity @s[scores={time=0..19}] run execute at @p as @e[type=minecraft:armor_stand,tag=spawner,distance=8..16,limit=1,sort=random] at @s unless entity @e[type=#minecraft:monster,distance=0..16] run summon zombie ~ ~ ~
execute if entity @s[scores={time=20..39}] run execute at @p as @e[type=minecraft:armor_stand,tag=spawner,distance=8..16,limit=1,sort=random] at @s unless entity @e[type=#minecraft:monster,distance=0..16] run summon creeper ~ ~ ~
execute if entity @s[scores={time=40..55}] run execute at @p as @e[type=minecraft:armor_stand,tag=spawner,distance=8..16,limit=1,sort=random] at @s unless entity @e[type=#minecraft:monster,distance=0..16] run summon skeleton ~ ~ ~
execute if entity @s[scores={time=56..75}] run execute at @p as @e[type=minecraft:armor_stand,tag=spawner,tag=spider,distance=8..16,limit=1,sort=random] at @s unless entity @e[type=#minecraft:monster,distance=0..16] run summon spider ~ ~ ~
execute if entity @s[scores={time=76..77}] run execute at @p as @e[type=minecraft:armor_stand,tag=spawner,distance=8..16,limit=1,sort=random] at @s unless entity @e[type=#minecraft:monster,distance=0..16] run summon enderman ~ ~ ~
execute if entity @s[scores={time=78}] run execute at @p as @e[type=minecraft:armor_stand,tag=spawner,distance=8..16,limit=1,sort=random] at @s unless entity @e[type=#minecraft:monster,distance=0..16] run summon witch ~ ~ ~

execute as @e[type=zombie] unless data entity @s CustomName run data merge entity @s {CustomNameVisible:true,CustomName:"{\"text\":\"Zombie\",\"color\":\"red\"}"}
execute as @e[type=creeper] unless data entity @s CustomName run data merge entity @s {CustomNameVisible:true,CustomName:"{\"text\":\"Creeper\",\"color\":\"red\"}"}
execute as @e[type=skeleton] unless data entity @s CustomName run data merge entity @s {CustomNameVisible:true,CustomName:"{\"text\":\"Skeleton\",\"color\":\"red\"}"}
execute as @e[type=spider] unless data entity @s CustomName run data merge entity @s {CustomNameVisible:true,CustomName:"{\"text\":\"Spider\",\"color\":\"red\"}"}
execute as @e[type=enderman] unless data entity @s CustomName run data merge entity @s {CustomNameVisible:true,CustomName:"{\"text\":\"Enderman\",\"color\":\"red\"}"}
execute as @e[type=witch] unless data entity @s CustomName run data merge entity @s {CustomNameVisible:true,CustomName:"{\"text\":\"Witch\",\"color\":\"red\"}"}

