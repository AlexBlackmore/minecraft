tag @p[advancements={skyblock:commands/shops/the_art_of_war=true}] add upgrade

execute if data entity @p[tag=upgrade] SelectedItem.tag.The_Art_Of_War run tellraw @p[tag=upgrade] ["",{"text":"<Weaponsmith> "},{"text":"The item you are holding already has that upgrade!","color":"red"}]
execute if data entity @p[tag=upgrade] SelectedItem.tag.The_Art_Of_War run tag @p[tag=upgrade] add fail

execute if entity @p[tag=upgrade,level=0] run tellraw @p[tag=upgrade] ["",{"text":"<Weaponsmith> "},{"text":"You don't have enough levels to upgrade that item!","color":"red"}]
tag @p[tag=upgrade,level=0] add fail

execute as @p[tag=upgrade,tag=!fail] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items

execute at @p[tag=upgrade,tag=!fail] run summon armor_stand ~ ~ ~ {Tags:["upgrade"]}
item replace entity @e[type=minecraft:armor_stand,tag=upgrade] weapon.mainhand from entity @p[tag=upgrade,tag=!fail] weapon.mainhand

execute as @e[type=armor_stand,tag=upgrade] run execute store result score @s attack_damage run data get entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount
execute as @e[type=armor_stand,tag=upgrade] run scoreboard players add @s attack_damage 1
execute as @e[type=armor_stand,tag=upgrade] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount double 1 run scoreboard players get @s attack_damage

item replace entity @p[tag=upgrade,tag=!fail] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=upgrade,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=upgrade]

item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:upgrades/the_art_of_war/set_lore
item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:upgrades/the_art_of_war/set_nbt
item modify entity @p[tag=upgrade,tag=!fail] weapon.offhand skyblock:subtract_item
xp add @p[tag=upgrade,tag=!fail] -1 levels

playsound minecraft:entity.villager.no player @p[tag=upgrade,tag=fail]
playsound minecraft:block.anvil.use player @p[tag=upgrade,tag=!fail]

tag @p[tag=fail] remove fail

advancement revoke @p[tag=upgrade] only skyblock:commands/shops/the_art_of_war
tag @p[tag=upgrade] remove upgrade