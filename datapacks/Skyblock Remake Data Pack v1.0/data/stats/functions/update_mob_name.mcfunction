#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------DISPLAY------------------#
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign
tag @s add SetHealthDisplay
data modify entity @s CustomName set value '""'
execute in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"[","color":"dark_gray"},{"text":"Lv","color":"gray"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayLevel"},"color":"gray"},{"text":"] ","color":"dark_gray"},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"red"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayMaxHealth"},"color":"green"},{"text":"❤","color":"red"}]'}
execute in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1
tag @s remove SetHealthDisplay
#------------------------------------------#