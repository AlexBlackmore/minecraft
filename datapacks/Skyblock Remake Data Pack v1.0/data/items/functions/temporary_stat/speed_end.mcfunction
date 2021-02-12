#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------TEMPORARY SPEED--------------#
scoreboard players remove @s P_BonusSpeed 50
scoreboard players remove @s P_Speed 50
scoreboard players remove @s I_TempSpeed 50
execute if score @s P_Speed matches 401.. run function stats:stat_update/maxed/speed
scoreboard players operation @s P_ExtraSpeed = @s P_Speed
scoreboard players remove @s P_ExtraSpeed 100
function stats:set_attribute/speed/l9/l9_0
scoreboard players reset @s I_TempSpeedTimer
#------------------------------------------#