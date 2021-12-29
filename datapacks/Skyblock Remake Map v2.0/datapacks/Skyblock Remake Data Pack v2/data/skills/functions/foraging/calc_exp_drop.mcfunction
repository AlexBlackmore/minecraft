#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $ForagingEXPBoost Temp = $ForagingEXP Temp
scoreboard players operation $ForagingEXPBoost Temp *= @s S_TotalForagingB
scoreboard players operation $ForagingEXPBoost Temp /= c100 Constant
scoreboard players operation $ForagingEXP Temp += $ForagingEXPBoost Temp
#------------------------------------------#