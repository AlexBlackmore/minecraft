#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------GET PLAYER XP---------------#
execute at @a[distance=..6] if score @s PlayerID = @p PlayerID store result score @p E_XPLevel run xp query @p levels
#------------REMOVE MENU ITEMS-------------#
execute if score @s E_LowSlot <= @p E_XPLevel run function enchanting:enchanting_table/add_enchants/slot_3_success
execute unless score @s E_LowSlot <= @p E_XPLevel run function enchanting:enchanting_table/add_enchants/failed
#------------------------------------------#