execute unless data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] if data entity @s Inventory[{id:"minecraft:nether_wart"}] if block ~ ~ ~ soul_sand run setblock ~ ~1 ~ nether_wart keep
execute unless data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] if data entity @s Inventory[{id:"minecraft:nether_wart"}] if block ~ ~-1 ~ soul_sand run setblock ~ ~ ~ nether_wart keep
execute unless data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] run clear @s minecraft:nether_wart 1

execute if data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] if block ~ ~ ~ soul_sand run setblock ~ ~1 ~ nether_wart keep
execute if data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] if block ~ ~-1 ~ soul_sand run setblock ~ ~ ~ nether_wart keep
execute if data entity @s SelectedItem.tag.Base.Enchantments[{telekinesis:{identifier:1b}}] run kill @e[type=item,tag=!InventoryItem,nbt={Age:0s,Item:{id:"minecraft:nether_wart",Count:1b,tag:{CustomModelData:1,Base:{Vanilla:1b}}}}]