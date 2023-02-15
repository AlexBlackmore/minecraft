execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s weapon.mainhand


#Pickaxes
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Ambered"}}]}] run function skyblock:reforging/reforges/pickaxes/ambered
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Auspicious"}}]}] run function skyblock:reforging/reforges/pickaxes/auspicious
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Fleet"}}]}] run function skyblock:reforging/reforges/pickaxes/fleet
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Heated"}}]}] run function skyblock:reforging/reforges/pickaxes/heated
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Magnetic"}}]}] run function skyblock:reforging/reforges/pickaxes/magnetic
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Mithraic"}}]}] run function skyblock:reforging/reforges/pickaxes/mithraic
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Refined"}}]}] run function skyblock:reforging/reforges/pickaxes/refined
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Stella"}}]}] run function skyblock:reforging/reforges/pickaxes/stella
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Fruitful"}}]}] run function skyblock:reforging/reforges/pickaxes/fruitful


execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_common
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_uncommon
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_rare
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_epic
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_legendary
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_special

tellraw @s[tag=success] ["",{"text":"You reforged your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" into a "},{"nbt":"HandItems[0].tag.display.Name","interpret":true,"entity":"@e[tag=anvil,limit=1,sort=nearest]"},{"text":"!","color":"white"}]
playsound minecraft:block.anvil.use player @s[tag=success]

item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
execute as @s[tag=success] run function skyblock:construct_lore
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
kill @e[type=armor_stand,tag=anvil]
tag @s[tag=success] remove success

advancement revoke @s only skyblock:commands/reforging/reforge_stones/pickaxes
