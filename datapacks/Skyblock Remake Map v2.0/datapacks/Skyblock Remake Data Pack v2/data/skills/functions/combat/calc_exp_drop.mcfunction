#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $CombatEXPBoost Temp = $CombatEXP Temp
scoreboard players operation $CombatEXPBoost Temp *= @s S_TotalCombatB
scoreboard players operation $CombatEXPBoost Temp /= c100 Constant
scoreboard players operation $CombatEXP Temp += $CombatEXPBoost Temp
#------------------------------------------#