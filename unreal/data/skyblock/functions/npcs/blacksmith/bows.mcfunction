execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s weapon.mainhand

execute store result score @s dummy run data get entity @p Inventory[{Slot:-106b}].Count
tag @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] add coal

tag @s[tag=coal] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=13..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=19..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=26..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=37..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=48..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=63..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 13 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 19 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 26 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 37 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 48 levels to apply a basic reforge to this item!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 63 levels to apply a basic reforge to this item, !","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=anvil,limit=1,sort=nearest] add success


scoreboard objectives add random dummy "Random"
execute at @e[tag=anvil] run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute as @e[tag=anvil,limit=1,sort=nearest] run execute store result score @s random run data get entity @e[tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set @e[tag=anvil,limit=1,sort=nearest] dummy 9
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s random %= @s dummy
#tellraw @p ["",{"text":"[RNG: ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=anvil,limit=1,sort=nearest]","objective":"random"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]

function skyblock:reforging/reset_reforge_stats

execute if entity @e[tag=success,tag=anvil,scores={random=0},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/deadly
execute if entity @e[tag=success,tag=anvil,scores={random=1},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/fine
execute if entity @e[tag=success,tag=anvil,scores={random=2},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/grand
execute if entity @e[tag=success,tag=anvil,scores={random=3},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/hasty
execute if entity @e[tag=success,tag=anvil,scores={random=4},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/neat
execute if entity @e[tag=success,tag=anvil,scores={random=5},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/rapid
execute if entity @e[tag=success,tag=anvil,scores={random=6},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/unreal
execute if entity @e[tag=success,tag=anvil,scores={random=7},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/awkward
execute if entity @e[tag=success,tag=anvil,scores={random=8},limit=1,sort=nearest] run function skyblock:reforging/reforges/bows/rich


execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_common
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_uncommon
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_rare
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_epic
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_legendary
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_special

tellraw @s[tag=success] ["",{"text":"You reforged your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" into a "},{"nbt":"HandItems[0].tag.display.Name","interpret":true,"entity":"@e[tag=anvil,limit=1,sort=nearest]"},{"text":"!","color":"white"}]
item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
execute as @s[tag=success] run function skyblock:construct_lore
kill @e[type=armor_stand,tag=anvil]


item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success,tag=coal] weapon.offhand skyblock:subtract_item

xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:0}}}] -250 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:1}}}] -500 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:2}}}] -1000 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:3}}}] -2500 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:4}}}] -5000 points
xp add @s[tag=success,tag=!coal,nbt={SelectedItem:{tag:{Rarity:5}}}] -10000 points

playsound minecraft:block.anvil.use player @s[tag=success]
playsound minecraft:entity.villager.no player @s[tag=success]

advancement revoke @s only skyblock:commands/npcs/blacksmith/bows

scoreboard objectives remove random
tag @s remove coal
tag @s remove success