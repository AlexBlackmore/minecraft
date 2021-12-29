#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $FishingEXPBoost Temp = $FishingEXP Temp
scoreboard players operation $FishingEXPBoost Temp *= @s S_TotalFishingB
scoreboard players operation $FishingEXPBoost Temp /= c100 Constant
scoreboard players operation $FishingEXP Temp += $FishingEXPBoost Temp
#------------------------------------------#