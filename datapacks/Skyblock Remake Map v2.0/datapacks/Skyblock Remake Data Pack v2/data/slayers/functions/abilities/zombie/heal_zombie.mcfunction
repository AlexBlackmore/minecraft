#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
scoreboard players operation $Health Temp = @s P_Health
scoreboard players operation $Health Temp /= c10 Constant
execute unless score @s P_Health >= @s DisplayMaxHealth run scoreboard players operation @s P_Health += $Health Temp
function stats:update_mob_name