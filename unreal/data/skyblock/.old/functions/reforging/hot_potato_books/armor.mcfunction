tag @p[advancements={skyblock:commands/reforging/hot_potato_books/armor=true}] add upgrade

tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:leather_boots"}}] add boots
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:chainmail_boots"}}] add boots
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:iron_boots"}}] add boots
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] add boots
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] add boots

tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:leather_leggings"}}] add leggings
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:chainmail_leggings"}}] add leggings
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:iron_leggings"}}] add leggings
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:diamond_leggings"}}] add leggings
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] add leggings

tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:leather_chestplate"}}] add chestplate
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}}] add chestplate
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:iron_chestplate"}}] add chestplate
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}}] add chestplate
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] add chestplate

tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] add helmet
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] add helmet
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] add helmet
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] add helmet
tag @p[tag=upgrade,nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] add helmet


scoreboard objectives add hot_potato_books dummy "Hot Potato Books"
execute as @p[tag=upgrade] run execute store result score @s hot_potato_books run data get entity @s SelectedItem.tag.Hot_Potato_Books
tellraw @p[tag=upgrade,scores={hot_potato_books=4..}] ["",{"text":"<Weaponsmith> "},{"text":"The item you are holding already has the max level of that upgrade!","color":"red"}]
tag @p[tag=upgrade,scores={hot_potato_books=4..}] add fail


execute as @p[tag=upgrade,tag=!fail] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute as @p[tag=upgrade,tag=!fail,tag=boots] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/feet/armor
execute as @p[tag=upgrade,tag=!fail,tag=leggings] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/legs/armor
execute as @p[tag=upgrade,tag=!fail,tag=chestplate] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/chest/armor
execute as @p[tag=upgrade,tag=!fail,tag=helmet] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/head/armor

execute as @p[tag=upgrade,tag=!fail,tag=boots] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/feet/max_health
execute as @p[tag=upgrade,tag=!fail,tag=leggings] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/legs/max_health
execute as @p[tag=upgrade,tag=!fail,tag=chestplate] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/chest/max_health
execute as @p[tag=upgrade,tag=!fail,tag=helmet] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/head/max_health


execute at @p[tag=upgrade,tag=!fail] run summon armor_stand ~ ~ ~ {Tags:["upgrade"]}
item replace entity @e[type=minecraft:armor_stand,tag=upgrade] weapon.mainhand from entity @p[tag=upgrade,tag=!fail] weapon.mainhand


execute as @e[type=armor_stand,tag=upgrade] run execute store result score @s armor run data get entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:0}].Amount
execute as @e[type=armor_stand,tag=upgrade] run scoreboard players add @s armor 1
execute as @e[type=armor_stand,tag=upgrade] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:0}].Amount double 1 run scoreboard players get @s armor

execute as @e[type=armor_stand,tag=upgrade] run execute store result score @s max_health run data get entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @e[type=armor_stand,tag=upgrade] run scoreboard players add @s max_health 2
execute as @e[type=armor_stand,tag=upgrade] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount double 1 run scoreboard players get @s max_health


item replace entity @p[tag=upgrade,tag=!fail] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=upgrade,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=upgrade]

item modify entity @p[tag=upgrade,tag=!fail,scores={hot_potato_books=0}] weapon.mainhand skyblock:upgrades/hot_potato_book/set_lore
item modify entity @p[tag=upgrade,tag=!fail,scores={hot_potato_books=0}] weapon.mainhand skyblock:upgrades/hot_potato_book/set_nbt1
item modify entity @p[tag=upgrade,tag=!fail,scores={hot_potato_books=1}] weapon.mainhand skyblock:upgrades/hot_potato_book/set_nbt2
item modify entity @p[tag=upgrade,tag=!fail,scores={hot_potato_books=2}] weapon.mainhand skyblock:upgrades/hot_potato_book/set_nbt3
item modify entity @p[tag=upgrade,tag=!fail,scores={hot_potato_books=3}] weapon.mainhand skyblock:upgrades/hot_potato_book/set_nbt4
item modify entity @p[tag=upgrade,tag=!fail] weapon.offhand skyblock:subtract_item

playsound minecraft:entity.villager.no player @p[tag=upgrade,tag=fail]
playsound minecraft:block.anvil.use player @p[tag=upgrade,tag=!fail]

tag @p[tag=fail] remove fail
scoreboard objectives remove hot_potato_books
advancement revoke @p[tag=upgrade] only skyblock:commands/reforging/hot_potato_books/armor
tag @p[tag=upgrade] remove upgrade
tag @p[tag=boots] remove boots
tag @p[tag=leggings] remove leggings
tag @p[tag=chestplate] remove chestplate
tag @p[tag=helmet] remove helmet