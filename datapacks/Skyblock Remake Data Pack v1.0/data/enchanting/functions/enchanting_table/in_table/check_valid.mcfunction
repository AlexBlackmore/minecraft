#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
execute if data storage blue:enchanting Items[{Slot:13b}].tag.Base.Enchantments[0] run function enchanting:enchanting_table/in_table/already_done
execute unless data storage blue:enchanting Items[{Slot:13b}].tag.Base.Enchantments[0] run function enchanting:enchanting_table/in_table/place_options
#------------------------------------------#