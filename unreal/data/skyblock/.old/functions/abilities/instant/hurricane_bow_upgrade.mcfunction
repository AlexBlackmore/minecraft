tag @p[advancements={skyblock:commands/instant/hurricane_bow_upgrade=true}] add hurricane_bow_upgrade

scoreboard objectives add multishot dummy "Multishot Level"

execute store result score @p[tag=hurricane_bow_upgrade] multishot run data get entity @p[tag=hurricane_bow_upgrade] SelectedItem.tag.Enchantments[{id:"minecraft:multishot"}].lvl

execute unless score @p[tag=hurricane_bow_upgrade] multishot matches 5 run tellraw @p[tag=hurricane_bow_upgrade] {"text":"[Hurricane Bow: +1 Multishot]","italic":true,"color":"gray"}
execute if score @p[tag=hurricane_bow_upgrade] multishot matches 5 run tellraw @p[tag=hurricane_bow_upgrade] {"text":"[Hurricane Bow: MAXED!]","italic":true,"color":"gray"}

execute unless score @p[tag=hurricane_bow_upgrade] multishot matches 5 run item modify entity @p[tag=hurricane_bow_upgrade] weapon.mainhand skyblock:increase_multishot_level
execute if score @p[tag=hurricane_bow_upgrade] multishot matches 4 run item modify entity @p[tag=hurricane_bow_upgrade] weapon.mainhand skyblock:add_lore_maxed


scoreboard objectives remove multishot
advancement revoke @p[tag=hurricane_bow_upgrade] only skyblock:commands/instant/hurricane_bow_upgrade
tag @p[tag=hurricane_bow_upgrade] remove hurricane_bow_upgrade
