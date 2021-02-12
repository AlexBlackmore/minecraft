#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/venomous
data modify storage blue:lore_builder NewLore append value '{"text":"Reduces the target\'s walk speed","color":"gray","italic":false}'
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"by \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].venomous.bonus\",\"storage\":\"blue:lore_builder\",\"color\":\"green\",\"italic\":false},{\"text\":\"%\",\"color\":\"green\",\"italic\":false},{\"text\":\" and deals \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].venomous.bonus\",\"storage\":\"blue:lore_builder\",\"color\":\"dark_green\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
data modify storage blue:lore_builder NewLore append value '[{"text":"damage per second. Lasts ","color":"gray","italic":false},{"text":"4","color":"gold","italic":false}]'
data modify storage blue:lore_builder NewLore append value '{"text":"seconds.","color":"gray","italic":false}'
#------------------------------------------#