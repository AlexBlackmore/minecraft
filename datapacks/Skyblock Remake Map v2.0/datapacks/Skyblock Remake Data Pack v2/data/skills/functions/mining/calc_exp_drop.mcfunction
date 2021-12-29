#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $MiningEXPBoost Temp = $MiningEXP Temp
scoreboard players operation $MiningEXPBoost Temp *= @s S_TotalMiningB
scoreboard players operation $MiningEXPBoost Temp /= c100 Constant
scoreboard players operation $MiningEXP Temp += $MiningEXPBoost Temp
#------------------------------------------#