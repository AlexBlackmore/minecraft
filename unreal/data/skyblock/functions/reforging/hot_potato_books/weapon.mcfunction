tag @s[nbt={SelectedItem:{id:"minecraft:bow"}}] add bow
tag @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] add bow

scoreboard objectives add hot_potato_books dummy "Hot Potato Books"
execute unless data entity @s SelectedItem.tag.HotPotatoBooks run item modify entity @s weapon.mainhand skyblock:hot_potato_books/set_nbt
execute as @s run execute store result score @s hot_potato_books run data get entity @s SelectedItem.tag.HotPotatoBooks
tag @s[scores={hot_potato_books=0..3}] add success
tellraw @s[tag=!success] {"text":"The item you are holding already has the max level of that upgrade!","color":"red"}


execute as @s[tag=success] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute as @s[tag=success] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/mainhand/attack_damage


item modify entity @s[tag=success,tag=bow] weapon.mainhand skyblock:enchantments/increase_power
item modify entity @s[tag=success,tag=!bow] weapon.mainhand skyblock:enchantments/increase_sharpness

execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand

execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run execute store result score @s attack_damage run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}].Amount
execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run scoreboard players add @s attack_damage 1
execute as @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}].Amount double 1 run scoreboard players get @s attack_damage

scoreboard players add @s[tag=success] hot_potato_books 1
execute store result entity @e[type=armor_stand,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.HotPotatoBooks int 1 run scoreboard players get @s hot_potato_books


item replace entity @s[tag=success] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=anvil]

execute as @s[tag=success] run function skyblock:construct_lore
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item

playsound minecraft:entity.villager.no player @s[tag=!success]
playsound minecraft:block.anvil.use player @s[tag=success]

scoreboard objectives remove hot_potato_books
advancement revoke @s only skyblock:commands/reforging/hot_potato_books/weapon
tag @s remove bow
tag @s remove success