#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Frail \",\"color\":\"blue\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].frail.level\",\"storage\":\"blue:lore_builder\",\"color\":\"blue\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
#------------------------------------------#