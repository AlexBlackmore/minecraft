#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
function stats:new_mob

execute store result score @s P_Health run data get entity @p SelectedItem.tag.Base.Enchantments[{frail:{identifier:1b}}].frail.bonus
scoreboard players set $Multiplier Temp 100
scoreboard players operation $Multiplier Temp -= @s P_Health
execute if score $Multiplier Temp matches ..0 run scoreboard players set $Multiplier Temp 0
execute store result score @s P_Health run data get entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base
scoreboard players operation @s P_Health *= $Multiplier Temp
scoreboard players operation @s P_Health /= c100 Constant
execute store result entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base float 1 run scoreboard players get @s P_Health

execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign
tag @s add SetHealthDisplay
data modify entity @s CustomName set value '""'
execute in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"[","color":"dark_gray"},{"text":"Lv","color":"gray"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayLevel"},"color":"gray"},{"text":"] ","color":"dark_gray"},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"red"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayMaxHealth"},"color":"green"},{"text":"❤","color":"red"}]'}
execute in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1
execute in minecraft:overworld run setblock 29999978 1 29832 air
#------------------------------------------#