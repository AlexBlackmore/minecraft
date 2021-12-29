tag @p[advancements={skyblock:commands/instant/growth_helmet=true}] add growth
tag @p[advancements={skyblock:commands/instant/growth_chestplate=true}] add growth
tag @p[advancements={skyblock:commands/instant/growth_leggings=true}] add growth
tag @p[advancements={skyblock:commands/instant/growth_boots=true}] add growth

tag @p[advancements={skyblock:commands/instant/growth_helmet=true}] add helmet
tag @p[advancements={skyblock:commands/instant/growth_chestplate=true}] add chestplate
tag @p[advancements={skyblock:commands/instant/growth_leggings=true}] add leggings
tag @p[advancements={skyblock:commands/instant/growth_boots=true}] add boots


execute as @p[tag=growth] run execute store result score @s max_health run attribute @s minecraft:generic.max_health get 0.01

execute as @p[tag=growth,scores={max_health=0..3}] run effect give @s instant_health 1
execute as @p[tag=growth,scores={max_health=4..7}] run effect give @s instant_health 2
execute as @p[tag=growth,scores={max_health=8..}] run effect give @s instant_health 3

tellraw @p[tag=growth] {"text":"[Growth: +Instant Health","italic":true,"color":"gray"}


execute as @p[tag=helmet] run execute store result score @s max_health run data get entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @p[tag=chestplate] run execute store result score @s max_health run data get entity @s Inventory[{Slot:102b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @p[tag=leggings] run execute store result score @s max_health run data get entity @s Inventory[{Slot:101b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @p[tag=boots] run execute store result score @s max_health run data get entity @s Inventory[{Slot:100b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount

scoreboard objectives add dummy dummy "Dummy"
scoreboard players add @p[tag=helmet] dummy 10
scoreboard players add @p[tag=chestplate] dummy 20
scoreboard players add @p[tag=leggings] dummy 16
scoreboard players add @p[tag=boots] dummy 10
execute as @p[tag=growth] run scoreboard players operation @s max_health -= @s dummy

tag @p[tag=growth,scores={max_health=100..}] add fail
tellraw @p[tag=helmet,tag=fail] {"text":"[Helmet of Growth: MAXED!]","italic":true,"color":"gray"}
tellraw @p[tag=chestplate,tag=fail] {"text":"[Chestplate of Growth: MAXED!]","italic":true,"color":"gray"}
tellraw @p[tag=leggings,tag=fail] {"text":"[Leggings of Growth: MAXED!]","italic":true,"color":"gray"}
tellraw @p[tag=boots,tag=fail] {"text":"[Boots of Growth: MAXED!]","italic":true,"color":"gray"}


execute at @p[tag=growth,tag=!fail] run summon armor_stand ~ ~ ~ {Tags:["growth"]}

item replace entity @e[type=minecraft:armor_stand,tag=growth] weapon.mainhand from entity @p[tag=helmet,tag=!fail] armor.head
item replace entity @e[type=minecraft:armor_stand,tag=growth] weapon.mainhand from entity @p[tag=chestplate,tag=!fail] armor.chest
item replace entity @e[type=minecraft:armor_stand,tag=growth] weapon.mainhand from entity @p[tag=leggings,tag=!fail] armor.legs
item replace entity @e[type=minecraft:armor_stand,tag=growth] weapon.mainhand from entity @p[tag=boots,tag=!fail] armor.feet

execute as @e[type=armor_stand,tag=growth] run execute store result score @s max_health run data get entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @e[type=armor_stand,tag=growth] run scoreboard players add @s max_health 1
execute as @e[type=armor_stand,tag=growth] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount double 1 run scoreboard players get @s max_health

item replace entity @p[tag=helmet,tag=!fail] armor.head from entity @e[type=minecraft:armor_stand,tag=growth,limit=1,sort=nearest] weapon.mainhand
item replace entity @p[tag=chestplate,tag=!fail] armor.chest from entity @e[type=minecraft:armor_stand,tag=growth,limit=1,sort=nearest] weapon.mainhand
item replace entity @p[tag=leggings,tag=!fail] armor.legs from entity @e[type=minecraft:armor_stand,tag=growth,limit=1,sort=nearest] weapon.mainhand
item replace entity @p[tag=boots,tag=!fail] armor.feet from entity @e[type=minecraft:armor_stand,tag=growth,limit=1,sort=nearest] weapon.mainhand

kill @e[type=armor_stand,tag=growth]

tellraw @p[tag=helmet,tag=!fail] {"text":"[Helmet of Growth: +1 Max Health]","italic":true,"color":"gray"}
tellraw @p[tag=chestplate,tag=!fail] {"text":"[Chestplate of Growth: +1 Max Health]","italic":true,"color":"gray"}
tellraw @p[tag=leggings,tag=!fail] {"text":"[Leggings of Growth: +1 Max Health]","italic":true,"color":"gray"}
tellraw @p[tag=boots,tag=!fail] {"text":"[Boots of Growth: +1 Max Health]","italic":true,"color":"gray"}

advancement revoke @p[tag=helmet] only skyblock:commands/instant/growth_helmet
advancement revoke @p[tag=chestplate] only skyblock:commands/instant/growth_chestplate
advancement revoke @p[tag=leggings] only skyblock:commands/instant/growth_leggings
advancement revoke @p[tag=boots] only skyblock:commands/instant/growth_boots

tag @p[tag=growth] remove growth
tag @p[tag=helmet] remove helmet
tag @p[tag=chestplate] remove chestplate
tag @p[tag=leggings] remove leggings
tag @p[tag=boots] remove boots