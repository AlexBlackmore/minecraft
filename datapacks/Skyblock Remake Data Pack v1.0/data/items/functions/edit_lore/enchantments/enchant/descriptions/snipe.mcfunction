#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/snipe
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Arrows deal \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"green\",\"italic\":false},{\"nbt\":\"ItemStorage.Base.Enchantments[].snipe.level\",\"storage\":\"blue:lore_builder\",\"color\":\"green\",\"italic\":false},{\"text\":\"%\",\"color\":\"green\",\"italic\":false},{\"text\":\" damage for\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
data modify storage blue:lore_builder NewLore append value '[{"text":"every ","color":"gray","italic":false},{"text":"10","color":"green","italic":false},{"text":" blocks travelled.","color":"gray","italic":false}]'
#------------------------------------------#