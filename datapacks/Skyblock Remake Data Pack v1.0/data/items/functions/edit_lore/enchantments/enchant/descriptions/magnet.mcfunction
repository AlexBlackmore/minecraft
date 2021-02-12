#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/magnet
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Grants \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].magnet.level\",\"storage\":\"blue:lore_builder\",\"color\":\"green\",\"italic\":false},{\"text\":\" additional\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
data modify storage blue:lore_builder NewLore append value '{"text":"experience orbs every time you","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"successfully catch a fish.","color":"gray","italic":false}'
#------------------------------------------#