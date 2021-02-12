#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------MAXED OUT STATS--------------#
execute if score @s P_Speed matches 401.. run function stats:stat_update/maxed/speed
#------------PLAYER STAT ITEM--------------#
scoreboard players operation @s P_ExtraSpeed = @s P_Speed
scoreboard players remove @s P_ExtraSpeed 100
function stats:set_attribute/speed/l9/l9_0
#-----------------UPDATES------------------#
scoreboard players operation @s P_PreSpeed = @s P_Speed
#------------------------------------------#