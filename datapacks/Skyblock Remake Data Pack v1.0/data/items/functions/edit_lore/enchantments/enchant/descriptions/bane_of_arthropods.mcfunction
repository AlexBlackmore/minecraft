#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/bane_of_arthropods
data modify storage blue:lore_builder NewLore append value '{"text":"Increases damage dealt to","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"Spiders, Cave Spiders,","color":"gray","italic":false}'
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"and Silverfish by \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].bane_of_arthropods.bonus\",\"storage\":\"blue:lore_builder\",\"color\":\"green\",\"italic\":false},{\"text\":\"%\",\"color\":\"green\",\"italic\":false},{\"text\":\".\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
#------------------------------------------#