#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
tag @s add EnchantChange
data modify entity @s Items[{Slot:1b}].tag.ItemChange set from entity @s Items[{Slot:0b}].tag.ItemChange
#------------------------------------------#