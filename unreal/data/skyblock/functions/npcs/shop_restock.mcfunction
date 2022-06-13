execute at @s run tag @e[type=villager,limit=1,sort=nearest,distance=0..5] add restock
tag @e[tag=restock,tag=unlimited_stock] remove restock

execute as @e[tag=restock] at @s run tp @s ~ ~256 ~
execute as @e[tag=restock] at @s run tp @s ~ ~-256 ~
execute at @s run data modify entity @e[tag=restock,limit=1,sort=nearest] Offers.Recipes[].uses set value 0
execute at @e[tag=restock,limit=1,sort=nearest] run particle minecraft:witch ~ ~1.5 ~ 0.5 0.5 0.5 1 10
playsound minecraft:entity.villager.celebrate player @s

scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 9

execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy
scoreboard players add @e[tag=rng] random 3

execute at @s store result entity @e[tag=restock,limit=1,sort=nearest] Offers.Recipes[].maxUses int 1 run scoreboard players get @e[tag=rng,limit=1] random
execute at @s run data modify entity @e[tag=restock,limit=1,sort=nearest] Offers.Recipes[-1].maxUses set value 2147483647
kill @e[tag=rng]

tag @e[tag=restock] remove restock
advancement revoke @s only skyblock:commands/npcs/shop_restock