#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/replenish
data modify storage blue:lore_builder NewLore append value '{"text":"Upon breaking crops, nether","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"wart, or cocoa, automatically","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"replant from materials in your","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '{"text":"inventory.","color":"gray","italic":false}'
#------------------------------------------#