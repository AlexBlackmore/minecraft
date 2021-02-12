#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Blazerod += @p C_Blazerod
execute if score @s C_Blazerod >= @s C_BlazerodN unless score @s C_BlazerodL matches 9.. run function collections:update_collections/combat/blaze_rod/levelup
scoreboard players reset @p C_Blazerod
#------------------------------------------#