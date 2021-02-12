#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
function items:edit_lore/enchantments/enchant/unique_line/piercing
data modify storage blue:lore_builder NewLore append value '{"text":"Arrows travel through enemies.","color":"gray","italic":false}'
data modify storage blue:lore_builder NewLore append value '[{"text":"The extra targets hit take ","color":"gray","italic":false},{"text":"25%","color":"green","italic":false}]'
data modify storage blue:lore_builder NewLore append value '{"text":"of the damage.","color":"gray","italic":false}'
#------------------------------------------#