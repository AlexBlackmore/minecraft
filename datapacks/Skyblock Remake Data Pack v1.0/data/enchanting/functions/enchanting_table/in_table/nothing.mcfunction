#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
execute unless data storage blue:enchanting Items[{Slot:20b}].tag.NotEnough run function enchanting:enchanting_table/return_item/not_enough/20
execute unless data storage blue:enchanting Items[{Slot:22b}].tag.NotEnough run function enchanting:enchanting_table/return_item/not_enough/22
execute unless data storage blue:enchanting Items[{Slot:24b}].tag.NotEnough run function enchanting:enchanting_table/return_item/not_enough/24
#------------------------------------------#