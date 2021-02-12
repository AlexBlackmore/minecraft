#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------CHECK FOR CLICKED-------------#
execute unless data storage blue:enchanting Items[{Slot:20b}].tag.SkyblockMenu at @a[distance=..6] if score @s PlayerID = @p PlayerID run function enchanting:enchanting_table/add_enchants/slot_1
execute unless data storage blue:enchanting Items[{Slot:22b}].tag.SkyblockMenu at @a[distance=..6] if score @s PlayerID = @p PlayerID run function enchanting:enchanting_table/add_enchants/slot_2
execute unless data storage blue:enchanting Items[{Slot:24b}].tag.SkyblockMenu at @a[distance=..6] if score @s PlayerID = @p PlayerID run function enchanting:enchanting_table/add_enchants/slot_3
#----------GENERATE SLOT ENCHANTS----------#
execute if data storage blue:enchanting Items[{Slot:0b}].tag.SkyblockMenu if entity @s[tag=EnchantChange] run function enchanting:enchanting_table/randomise_slots
#------------------------------------------#