#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
execute unless data storage blue:enchanting Items[{Slot:20b}].tag.CantEnchant run function enchanting:enchanting_table/return_item/cant_enchant/20
execute unless data storage blue:enchanting Items[{Slot:22b}].tag.CantEnchant run function enchanting:enchanting_table/return_item/cant_enchant/22
execute unless data storage blue:enchanting Items[{Slot:24b}].tag.CantEnchant run function enchanting:enchanting_table/return_item/cant_enchant/24
#------------------------------------------#