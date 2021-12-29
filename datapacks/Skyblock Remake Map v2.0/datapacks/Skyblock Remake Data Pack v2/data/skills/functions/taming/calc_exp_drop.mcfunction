#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $TamingEXPBoost Temp = $TamingEXP Temp
scoreboard players operation $TamingEXPBoost Temp *= @s S_TotalTamingB
scoreboard players operation $TamingEXPBoost Temp /= c100 Constant
scoreboard players operation $TamingEXP Temp += $TamingEXPBoost Temp
#------------------------------------------#