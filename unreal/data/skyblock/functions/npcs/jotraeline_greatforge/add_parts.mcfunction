execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

scoreboard objectives add efficiency dummy "Efficiency"
scoreboard objectives add fortune dummy "Fortune"
scoreboard objectives add unbreaking dummy "Unbreaking"

execute store result score @s[tag=succcess] efficiency run data get entity @s SelectedItem.tag.Efficiency
scoreboard players set @s fortune 3
scoreboard players set @s unbreaking 3


scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{Engine:"Mithril-Plated Drill Engine"}}]}] efficiency 1
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{Engine:"Titanium-Plated Drill Engine"}}]}] efficiency 3
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{Engine:"Ruby-Polished Drill Engine"}}]}] efficiency 5
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{Engine:"Sapphire-Polished Drill Engine"}}]}] efficiency 8
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{Engine:"Amber-Polished Drill Engine"}}]}] efficiency 13

scoreboard players add @s[tag=success,nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"minecraft:fortune",lvl:4}]}}}] fortune 1
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{Engine:"Ruby-Polished Drill Engine"}}]}] fortune 3
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{Engine:"Sapphire-Polished Drill Engine"}}]}] fortune 5
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{Engine:"Amber-Polished Drill Engine"}}]}] fortune 10

scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{FuelTank:"Mithril-Infused Fuel Tank"}}]}] unbreaking 1
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{FuelTank:"Titanium-Infused Fuel Tank"}}]}] unbreaking 9
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{FuelTank:"Gemstone Fuel Tank"}}]}] unbreaking 21
scoreboard players add @s[tag=success,nbt={Inventory:[{Slot:-106b,tag:{FuelTank:"Perfectly-Cut Fuel Tank"}}]}] unbreaking 47


execute if data entity @s Inventory[{Slot:-106b}].tag.FuelTank run loot give @s[nbt={SelectedItem:{tag:{FuelTank:"Mithril-Infused Fuel Tank"}}}] loot skyblock:items/drill_parts/fuel_tanks/mithril_infused
execute if data entity @s Inventory[{Slot:-106b}].tag.FuelTank run loot give @s[nbt={SelectedItem:{tag:{FuelTank:"Titanium-Infused Fuel Tank"}}}] loot skyblock:items/drill_parts/fuel_tanks/titanium_infused
execute if data entity @s Inventory[{Slot:-106b}].tag.FuelTank run loot give @s[nbt={SelectedItem:{tag:{FuelTank:"Gemstone Fuel Tank"}}}] loot skyblock:items/drill_parts/fuel_tanks/gemstone
execute if data entity @s Inventory[{Slot:-106b}].tag.FuelTank run loot give @s[nbt={SelectedItem:{tag:{FuelTank:"Perfectly-Cut Fuel Tank"}}}] loot skyblock:items/drill_parts/fuel_tanks/perfectly_cut

execute if data entity @s Inventory[{Slot:-106b}].tag.Engine run loot give @s[nbt={SelectedItem:{tag:{Engine:"Mithril-Plated Drill Engine"}}}] loot skyblock:items/drill_parts/engines/mithril_polished
execute if data entity @s Inventory[{Slot:-106b}].tag.Engine run loot give @s[nbt={SelectedItem:{tag:{Engine:"Titanium-Plated Drill Engine"}}}] loot skyblock:items/drill_parts/engines/titanium_polished
execute if data entity @s Inventory[{Slot:-106b}].tag.Engine run loot give @s[nbt={SelectedItem:{tag:{Engine:"Ruby-Polished Drill Engine"}}}] loot skyblock:items/drill_parts/engines/ruby_polished
execute if data entity @s Inventory[{Slot:-106b}].tag.Engine run loot give @s[nbt={SelectedItem:{tag:{Engine:"Sapphire-Polished Drill Engine"}}}] loot skyblock:items/drill_parts/engines/sapphire_polished
execute if data entity @s Inventory[{Slot:-106b}].tag.Engine run loot give @s[nbt={SelectedItem:{tag:{Engine:"Amber-Polished Drill Engine"}}}] loot skyblock:items/drill_parts/engines/amber_polished


execute if data entity @s Inventory[{Slot:-106b}].tag.FuelTank run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.FuelTank set from entity @s Inventory[{Slot:-106b}].tag.FuelTank
execute if data entity @s Inventory[{Slot:-106b}].tag.Engine run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Engine set from entity @s Inventory[{Slot:-106b}].tag.Engine
execute if data entity @s Inventory[{Slot:-106b}].tag.Upgrade run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Upgrade set from entity @s Inventory[{Slot:-106b}].tag.Upgrade

execute if data entity @s Inventory[{Slot:-106b}].tag.Engine run execute store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Enchantments[{id:"minecraft:efficiency"}].lvl short 1 run scoreboard players get @s efficiency
execute if data entity @s Inventory[{Slot:-106b}].tag.Engine run execute store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Enchantments[{id:"minecraft:fortune"}].lvl short 1 run scoreboard players get @s fortune
execute if data entity @s Inventory[{Slot:-106b}].tag.FuelTank run execute store result entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl short 1 run scoreboard players get @s unbreaking

item replace entity @s[tag=drill,tag=drill_part] weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=anvil]
execute as @s run function skyblock:construct_lore

tellraw @s ["",{"text":"You added a ","color":"white"},{"nbt":"Inventory[{Slot:-106b}].tag.display.Name","interpret":true,"entity":"@s"},{"text":" to your "},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":"!","color":"white"}]
playsound minecraft:block.anvil.use player @s

item modify entity @s weapon.offhand skyblock:subtract_item