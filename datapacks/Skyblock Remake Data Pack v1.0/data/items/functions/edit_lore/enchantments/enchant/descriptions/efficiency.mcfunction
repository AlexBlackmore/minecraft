#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/efficiency
data modify storage blue:lore_builder NewLore append value '{"text":"Increases how quickly your tool","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"breaks blocks.","color":"gray","italic":false}'
#------------------------------------------#