#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/lethality
data modify storage blue:lore_builder NewLore append value '{"text":"Reduces the armor of your target","color":"gray","italic":false}'
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"by \",\"color\":\"gray\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].lethality.level\",\"storage\":\"blue:lore_builder\",\"color\":\"green\",\"italic\":false},{\"text\":\".0%\",\"color\":\"green\",\"italic\":false},{\"text\":\" for \",\"color\":\"gray\",\"italic\":false},{\"text\":\"8\",\"color\":\"gold\",\"italic\":false},{\"text\":\" seconds\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
data modify storage blue:lore_builder NewLore append value '{"text":"each time you hit them with","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '[{"text":"melee. Stacks up to ","color":"gray","italic":false},{"text":"5","color":"green","italic":false},{"text":" times.","color":"gray","italic":false}]'
#------------------------------------------#