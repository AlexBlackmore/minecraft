#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------STATS IN LORE---------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld if score @s Pet_Ferocity matches ..-1 run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Ferocity: \",\"color\":\"gray\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=CurrentEnchant,limit=1]\",\"objective\":\"Pet_Ferocity\"},\"color\":\"green\",\"italic\":false},{\"text\":\"\",\"color\":\"green\",\"italic\":false}]"}
execute in minecraft:overworld if score @s Pet_Ferocity matches 0.. run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Ferocity: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"green\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=CurrentEnchant,limit=1]\",\"objective\":\"Pet_Ferocity\"},\"color\":\"green\",\"italic\":false},{\"text\":\"\",\"color\":\"green\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
tag @s add GreenStat
#------------------------------------------#