#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $CarpentryEXPBoost Temp = $CarpentryEXP Temp
scoreboard players operation $CarpentryEXPBoost Temp *= @s S_TotalCarpB
scoreboard players operation $CarpentryEXPBoost Temp /= c100 Constant
scoreboard players operation $CarpentryEXP Temp += $CarpentryEXPBoost Temp
#------------------------------------------#