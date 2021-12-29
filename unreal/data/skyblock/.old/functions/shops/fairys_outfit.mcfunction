tag @p[advancements={skyblock:commands/shops/fairys_outfit=true}] add upgrade

scoreboard objectives add count dummy "Count"
execute as @p[tag=upgrade] run execute store result score @s count run data get entity @s Inventory[{Slot:-106b}].Count
tellraw @p[tag=upgrade,scores={count=..4}] ["",{"text":"<"},{"text":"Tia the Fairy","color":"light_purple"},{"text":"> "},{"text":"You need at least 5 Fairy Souls to upgrade an armor piece!","color":"red"}]
tag @p[tag=upgrade,scores={count=..4}] add fail
scoreboard objectives remove count

execute at @p[tag=upgrade,tag=!fail] run summon armor_stand ~ ~ ~ {Tags:["upgrade"]}

item replace entity @e[type=minecraft:armor_stand,tag=upgrade] weapon.mainhand from entity @p[tag=upgrade,tag=!fail] weapon.mainhand
execute as @e[type=armor_stand,tag=upgrade] run execute store result score @s max_health run data get entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @e[type=armor_stand,tag=upgrade] run scoreboard players add @s max_health 1
execute as @e[type=armor_stand,tag=upgrade] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount double 1 run scoreboard players get @s max_health
item replace entity @p[tag=upgrade,tag=!fail] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=upgrade,limit=1,sort=nearest] weapon.mainhand

kill @e[type=armor_stand,tag=upgrade]

item modify entity @p[tag=upgrade,tag=!fail] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=upgrade,tag=!fail] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=upgrade,tag=!fail] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=upgrade,tag=!fail] weapon.offhand skyblock:subtract_item
item modify entity @p[tag=upgrade,tag=!fail] weapon.offhand skyblock:subtract_item

execute at @p[tag=upgrade,tag=fail] run playsound minecraft:entity.villager.no player @p
execute at @p[tag=upgrade,tag=!fail] run playsound minecraft:entity.villager.celebrate player @p

advancement revoke @p[tag=upgrade] only skyblock:commands/shops/fairys_outfit
tag @p[tag=upgrade] remove upgrade
tag @p[tag=fail] remove fail