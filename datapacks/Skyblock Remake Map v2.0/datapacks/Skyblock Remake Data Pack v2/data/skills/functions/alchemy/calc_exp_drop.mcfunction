#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $AlchemyEXPBoost Temp = $AlchemyEXP Temp
scoreboard players operation $AlchemyEXPBoost Temp *= @s S_TotalAlchemyB
scoreboard players operation $AlchemyEXPBoost Temp /= c100 Constant
scoreboard players operation $AlchemyEXP Temp += $AlchemyEXPBoost Temp
#------------------------------------------#