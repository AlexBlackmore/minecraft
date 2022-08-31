execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s armor.head

execute as @e[type=armor_stand,tag=anvil] run execute store result score @s max_health run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Max Health",AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @e[type=armor_stand,tag=anvil,scores={max_health=0..99}] run scoreboard players add @s max_health 1
execute as @e[type=armor_stand,tag=anvil] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount double 1 run scoreboard players get @s max_health

item replace entity @s armor.head from entity @e[type=minecraft:armor_stand,tag=anvil,limit=1,sort=nearest] weapon.mainhand

execute if entity @e[type=armor_stand,tag=anvil,scores={max_health=0..99}] run tellraw @s ["",{"text":"KRAMPUS HELMET!","bold":true,"italic":true,"color":"gold"},{"text":" +1 Max Health","color":"gray"}]
playsound minecraft:block.anvil.use player @s

kill @e[type=armor_stand,tag=anvil]
advancement revoke @s only skyblock:commands/abilities/krampus_helmet