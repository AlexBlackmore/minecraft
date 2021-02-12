#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Ice += @p C_Ice
execute if score @s C_Ice >= @s C_IceN unless score @s C_IceL matches 10.. run function collections:update_collections/mining/ice/levelup
scoreboard players reset @p C_Ice
#------------------------------------------#