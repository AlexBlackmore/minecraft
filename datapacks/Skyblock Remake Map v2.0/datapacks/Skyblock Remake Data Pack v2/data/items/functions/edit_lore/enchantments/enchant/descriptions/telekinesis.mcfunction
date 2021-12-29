#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/telekinesis
data modify storage blue:lore_builder NewLore append value '{"text":"Block and mob drops go directly","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"into your inventory.","color":"gray","italic":false}'
#------------------------------------------#