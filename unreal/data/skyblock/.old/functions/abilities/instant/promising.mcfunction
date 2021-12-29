tag @p[advancements={skyblock:commands/instant/promising=true}] add promising

scoreboard objectives add efficiency dummy "Efficiency Level"

execute as @p[tag=promising] run execute store result score @s efficiency run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:efficiency"}].lvl
execute as @p[tag=promising] unless entity @s[nbt={SelectedItem:{tag:{Promising:0}}}] unless entity @s[nbt={SelectedItem:{tag:{Promising:1}}}] run scoreboard players set @s efficiency 2

execute as @p[tag=promising,scores={efficiency=..1}] run item modify entity @s weapon.mainhand skyblock:increase_efficiency_level
execute as @p[tag=promising,scores={efficiency=0}] run item modify entity @s weapon.mainhand skyblock:enchantments/promising/set_nbt1
execute as @p[tag=promising,scores={efficiency=1..}] run item modify entity @s weapon.mainhand skyblock:enchantments/promising/set_nbt2
execute as @p[tag=promising,scores={efficiency=..1}] run tellraw @s {"text":"[Promising: +1 Efficiency]","italic":true,"color":"gray"}

advancement revoke @p[tag=promising] only skyblock:commands/instant/promising
tag @p[tag=promising] remove promising
