#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/silk_touch
data modify storage blue:lore_builder NewLore append value '{"text":"Allows you to collect normally","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"unobtainable block drops.","color":"gray","italic":false}'
#------------------------------------------#