execute store result score @s dummy run data get entity @s SelectedItem.Count
tag @s[nbt={SelectedItem:{tag:{Name:"Enchanted Emerald"}}},scores={dummy=13..}] add rainmaker


playsound minecraft:entity.villager.yes player @s[tag=rainmaker]
execute if entity @s[tag=rainmaker] in minecraft:overworld run weather rain 60

item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item

item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item

item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=rainmaker] weapon.mainhand skyblock:subtract_item


tellraw @s[tag=!rainmaker] ["",{"text":"<","color":"white"},{"text":"Vanessa","color":"yellow"},{"text":"> For a few emeralds, I'll conjure the rain!","color":"white"}]
tellraw @s[tag=!rainmaker,nbt={SelectedItem:{tag:{Name:"Enchanted Emerald"}}}] ["",{"text":"Can't afford rain!","color":"red"}]
playsound minecraft:entity.villager.no player @s[tag=!rainmaker]


tag @s remove rainmaker
advancement revoke @s only skyblock:commands/npcs/vanessa