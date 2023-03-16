tag @s[nbt={SelectedItem:{id:"minecraft:leather_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:iron_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] add boots
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] add boots

tag @s[nbt={SelectedItem:{id:"minecraft:leather_leggings"}}] add leggings
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_leggings"}}] add leggings
tag @s[nbt={SelectedItem:{id:"minecraft:iron_leggings"}}] add leggings
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings"}}] add leggings
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] add leggings

tag @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}}] add chestplate
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}}] add chestplate
tag @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}}] add chestplate
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}}] add chestplate
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] add chestplate

tag @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] add helmet
tag @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] add helmet
tag @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] add helmet
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] add helmet
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] add helmet
tag @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{Unbreakable:1b}}}] add helmet


scoreboard objectives add hot_potato_books dummy "Hot Potato Books"
execute unless data entity @s SelectedItem.tag.HotPotatoBooks run item modify entity @s weapon.mainhand skyblock:hot_potato_books/set_nbt
execute as @s run execute store result score @s hot_potato_books run data get entity @s SelectedItem.tag.HotPotatoBooks
tag @s[scores={hot_potato_books=0..3}] add success
tellraw @s[tag=!success] {"text":"The item you are holding already has the max level of that upgrade!","color":"red"}


execute as @s[tag=success] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute as @s[tag=success,tag=boots] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Armor",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/feet/armor
execute as @s[tag=success,tag=leggings] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Armor",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/legs/armor
execute as @s[tag=success,tag=chestplate] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Armor",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/chest/armor
execute as @s[tag=success,tag=helmet] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Armor",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/head/armor

execute as @s[tag=success,tag=boots] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/feet/max_health
execute as @s[tag=success,tag=leggings] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/legs/max_health
execute as @s[tag=success,tag=chestplate] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/chest/max_health
execute as @s[tag=success,tag=helmet] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/head/max_health


execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand


execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run execute store result score @s armor run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Armor",Operation:0}].Amount
execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run scoreboard players add @s armor 1
execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"Armor",Operation:0}].Amount double 1 run scoreboard players get @s armor

execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run execute store result score @s max_health run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Max Health",Operation:0}].Amount
execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run scoreboard players add @s max_health 2
execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"Max Health",Operation:0}].Amount double 1 run scoreboard players get @s max_health

scoreboard players add @s[tag=success] hot_potato_books 1
execute store result entity @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.HotPotatoBooks int 1 run scoreboard players get @s hot_potato_books


item replace entity @s[tag=success] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=anvil]

execute as @s[tag=success] run function skyblock:construct_lore
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item

playsound minecraft:entity.villager.no player @s[tag=!success]
playsound minecraft:block.anvil.use player @s[tag=success]

scoreboard objectives remove hot_potato_books
advancement revoke @s only skyblock:commands/reforging/hot_potato_books/armor
tag @s remove boots
tag @s remove leggings
tag @s remove chestplate
tag @s remove helmet
tag @s remove success