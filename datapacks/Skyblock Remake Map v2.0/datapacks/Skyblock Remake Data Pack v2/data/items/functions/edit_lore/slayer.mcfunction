#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------STATS IN LORE---------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"☠\",\"color\":\"red\",\"italic\":false},{\"text\":\" Requires \",\"color\":\"dark_purple\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.SlayerRequired.Type\",\"storage\":\"blue:lore_builder\",\"color\":\"dark_purple\",\"italic\":false},{\"text\":\" LVL \",\"color\":\"dark_purple\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.SlayerRequired.LVL\",\"storage\":\"blue:lore_builder\",\"color\":\"dark_purple\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
#------------------------------------------#