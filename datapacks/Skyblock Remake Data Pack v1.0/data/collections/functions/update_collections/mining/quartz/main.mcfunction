#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Quartz += @p C_Quartz
execute if score @s C_Quartz >= @s C_QuartzN unless score @s C_QuartzL matches 9.. run function collections:update_collections/mining/quartz/levelup
scoreboard players reset @p C_Quartz
#------------------------------------------#