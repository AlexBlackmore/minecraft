#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/smelting_touch
data modify storage blue:lore_builder NewLore append value '{"text":"Automatically smelts broken","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"blocks into their smelted form","color":"gray","italic":false}'
#------------------------------------------#