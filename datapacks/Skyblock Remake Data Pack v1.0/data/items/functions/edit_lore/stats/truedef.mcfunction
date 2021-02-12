#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------STATS IN LORE---------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"True Defense: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"green\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=CurrentEnchant,limit=1]\",\"objective\":\"Ench_TrueDef\"},\"color\":\"green\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
tag @s add GreenStat
#------------------------------------------#