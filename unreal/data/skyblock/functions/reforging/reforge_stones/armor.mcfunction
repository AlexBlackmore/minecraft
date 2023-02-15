execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s weapon.mainhand


#Armor
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Candied"}}]}] run function skyblock:reforging/reforges/armor/candied
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Submerged"}}]}] run function skyblock:reforging/reforges/armor/submerged
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Perfect"}}]}] run function skyblock:reforging/reforges/armor/perfect
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Reinforced"}}]}] run function skyblock:reforging/reforges/armor/reinforced
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Renowned"}}]}] run function skyblock:reforging/reforges/armor/renowned
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Spiked"}}]}] run function skyblock:reforging/reforges/armor/spiked
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Hyper"}}]}] run function skyblock:reforging/reforges/armor/hyper
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Giant"}}]}] run function skyblock:reforging/reforges/armor/giant
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Jaded"}}]}] run function skyblock:reforging/reforges/armor/jaded
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Cubic"}}]}] run function skyblock:reforging/reforges/armor/cubic
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Necrotic"}}]}] run function skyblock:reforging/reforges/armor/necrotic
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Empowered"}}]}] run function skyblock:reforging/reforges/armor/empowered
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Ancient"}}]}] run function skyblock:reforging/reforges/armor/ancient
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Undead"}}]}] run function skyblock:reforging/reforges/armor/undead
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Loving"}}]}] run function skyblock:reforging/reforges/armor/loving
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Ridiculous"}}]}] run function skyblock:reforging/reforges/armor/ridiculous

#Equipment
#execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Glistening"}}]}] run function skyblock:reforging/reforges/equipment/glistening
#execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Strengthened"}}]}] run function skyblock:reforging/reforges/equipment/strengthened
#execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Waxed"}}]}] run function skyblock:reforging/reforges/equipment/waxed
#execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Reforge:"Fortified"}}]}] run function skyblock:reforging/reforges/equipment/fortified


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

advancement revoke @s only skyblock:commands/reforging/reforge_stones/armor