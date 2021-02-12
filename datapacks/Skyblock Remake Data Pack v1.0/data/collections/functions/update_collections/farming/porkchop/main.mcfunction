#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Porkchop += @p C_Porkchop
execute if score @s C_Porkchop >= @s C_PorkchopN unless score @s C_PorkchopL matches 9.. run function collections:update_collections/farming/porkchop/levelup
scoreboard players reset @p C_Porkchop
#------------------------------------------#