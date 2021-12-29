#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/true_protection
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Grants \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"white\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].true_protection.bonus\",\"storage\":\"blue:lore_builder\",\"color\":\"white\",\"italic\":false},{\"text\":\"❂ True Defense\",\"color\":\"white\",\"italic\":false},{\"text\":\".\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
#------------------------------------------#