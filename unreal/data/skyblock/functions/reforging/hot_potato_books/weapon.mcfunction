tag @p[advancements={skyblock:commands/reforging/hot_potato_books/weapon=true}] add upgrade

scoreboard objectives add hot_potato_books dummy "Hot Potato Books"
execute as @p[tag=upgrade] run execute store result score @s hot_potato_books run data get entity @s SelectedItem.tag.Hot_Potato_Books
tellraw @p[tag=upgrade,scores={hot_potato_books=4..}] ["",{"text":"<Weaponsmith> "},{"text":"The item you are holding already has the max level of that upgrade!","color":"red"}]
tag @p[tag=upgrade,scores={hot_potato_books=4..}] add fail

execute as @p[tag=upgrade,tag=!fail] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute as @p[tag=upgrade,tag=!fail] unless data entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}] run item modify entity @p[tag=upgrade,tag=!fail] weapon.mainhand skyblock:set_blank_attributes/mainhand/attack_damage

execute at @p[tag=upgrade,tag=!fail] run summon armor_stand ~ ~ ~ {Tags:["upgrade"]}
item replace entity @e[type=minecraft:armor_stand,tag=upgrade] weapon.mainhand from entity @p[tag=upgrade,tag=!fail] weapon.mainhand

execute as @e[type=armor_stand,tag=upgrade] run execute store result score @s attack_damage run data get entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount
execute as @e[type=armor_stand,tag=upgrade] run scoreboard players add @s attack_damage 1
execute as @e[type=armor_stand,tag=upgrade] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount double 1 run scoreboard players get @s attack_damage

item replace entity @p[tag=upgrade,tag=!fail] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=upgrade,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=upgrade]

tag @p[tag=upgrade,tag=!fail,nbt={SelectedItem:{id:"minecraft:bow"}}] add bow
tag @p[tag=upgrade,tag=!fail,nbt={SelectedItem:{id:"minecraft:crossbow"}}] add bow

item modify entity @p[tag=upgrade,tag=!fail,tag=bow] weapon.mainhand skyblock:increase_power_level
item modify entity @p[tag=upgrade,tag=!fail,tag=!bow] weapon.mainhand skyblock:increase_sharpness_level

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
advancement revoke @p[tag=upgrade] only skyblock:commands/reforging/hot_potato_books/weapon
tag @p[tag=upgrade] remove upgrade