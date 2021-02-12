#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/luck
data modify storage blue:lore_builder NewLore append value '{"text":"Increases the chance for","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"Monsters to drop their armor by","color":"gray","italic":false}'
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"nbt\":\"ItemStorage.Base.Enchantments[].luck.bonus\",\"storage\":\"blue:lore_builder\",\"color\":\"green\",\"italic\":false},{\"text\":\"%\",\"color\":\"green\",\"italic\":false},{\"text\":\".\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
#------------------------------------------#