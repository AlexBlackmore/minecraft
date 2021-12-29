#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Inksac += @p C_Inksac
execute if score @s C_Inksac >= @s C_InksacN unless score @s C_InksacL matches 9.. run function collections:update_collections/fishing/ink_sac/levelup
scoreboard players reset @p C_Inksac
#------------------------------------------#