execute unless data entity @p SelectedItem.tag.Vampirism run item modify entity @p weapon.mainhand skyblock:enchantments/vampirism/set_lore

scoreboard objectives add tool_level dummy "Tool Level"
scoreboard objectives add enchant_level dummy "Enchant Level"

execute store result score @p tool_level run data get entity @p SelectedItem.tag.Vampirism
execute store result score @p enchant_level run data get entity @p Inventory[{Slot:-106b}].tag.Vampirism

execute if score @p tool_level = @p enchant_level run scoreboard players add @p enchant_level 1
execute if score @p tool_level > @p enchant_level run scoreboard players set @p enchant_level 0

execute if score @p enchant_level matches 1 run item modify entity @p weapon.mainhand skyblock:enchantments/vampirism/set_nbt1
execute if score @p enchant_level matches 2 run item modify entity @p weapon.mainhand skyblock:enchantments/vampirism/set_nbt2
execute if score @p enchant_level matches 3 run item modify entity @p weapon.mainhand skyblock:enchantments/vampirism/set_nbt3
execute if score @p enchant_level matches 4 run item modify entity @p weapon.mainhand skyblock:enchantments/vampirism/set_nbt4
execute if score @p enchant_level matches 5 run item modify entity @p weapon.mainhand skyblock:enchantments/vampirism/set_nbt5
execute if score @p enchant_level matches 6 run item modify entity @p weapon.mainhand skyblock:enchantments/vampirism/set_nbt6
