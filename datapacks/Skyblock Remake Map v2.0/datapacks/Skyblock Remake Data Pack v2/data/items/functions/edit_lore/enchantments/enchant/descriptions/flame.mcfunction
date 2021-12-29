#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/flame
data modify storage blue:lore_builder NewLore append value '{"text":"Arrows ignite your enemies for","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '[{"text":"3s","color":"green","italic":false},{"text":".","color":"gray","italic":false}]'
#------------------------------------------#