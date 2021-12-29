#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------STATS IN LORE---------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Anvil Uses: \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.AnvilUses\",\"storage\":\"blue:lore_builder\",\"color\":\"red\",\"italic\":false}]"}
execute in minecraft:overworld if data storage blue:lore_builder ItemStorage.Base.AnvilUses unless data storage blue:lore_builder {ItemStorage:{Base:{AnvilUses:0}}} run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
#------------------------------------------#