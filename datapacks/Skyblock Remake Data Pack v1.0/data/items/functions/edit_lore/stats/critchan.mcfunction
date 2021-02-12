#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------STATS IN LORE---------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Crit Chance: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=CurrentEnchant,limit=1]\",\"objective\":\"Ench_CritChan\"},\"color\":\"red\",\"italic\":false},{\"text\":\"%\",\"color\":\"red\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
tag @s add RedStat
#------------------------------------------#