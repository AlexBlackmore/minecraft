execute unless data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] if data entity @s Inventory[{id:"minecraft:wheat_seeds"}] if block ~ ~ ~ farmland run setblock ~ ~1 ~ wheat keep
execute unless data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] if data entity @s Inventory[{id:"minecraft:wheat_seeds"}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ wheat keep
execute unless data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] run clear @s minecraft:wheat_seeds 1

execute if data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] if block ~ ~ ~ farmland run setblock ~ ~1 ~ wheat keep
execute if data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ wheat keep
execute if data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] run kill @e[type=item,tag=!InventoryItem,nbt={Age:0s,Item:{id:"minecraft:wheat_seeds",Count:1b,tag:{CustomModelData:1,Base:{Vanilla:1b}}}}]