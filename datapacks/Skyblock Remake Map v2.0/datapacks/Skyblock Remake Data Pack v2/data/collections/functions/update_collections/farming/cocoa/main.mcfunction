#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Cocoa += @p C_Cocoa
execute if score @s C_Cocoa >= @s C_CocoaN unless score @s C_CocoaL matches 9.. run function collections:update_collections/farming/cocoa/levelup
scoreboard players reset @p C_Cocoa
#------------------------------------------#