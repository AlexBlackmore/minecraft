tag @p[advancements={skyblock:commands/shops/enchant=true}] add enchant

execute if data entity @p[tag=enchant] Inventory[{Slot:-106b}].tag.Rainbow run function skyblock:shops/enchantments/rainbow
execute if data entity @p[tag=enchant] Inventory[{Slot:-106b}].tag.Smelting_Touch run function skyblock:shops/enchantments/smelting_touch
execute if data entity @p[tag=enchant] Inventory[{Slot:-106b}].tag.Thunderbolt run function skyblock:shops/enchantments/thunderbolt

advancement revoke @p[tag=enchant] only skyblock:commands/shops/enchant
tag @p[tag=enchant] remove enchant