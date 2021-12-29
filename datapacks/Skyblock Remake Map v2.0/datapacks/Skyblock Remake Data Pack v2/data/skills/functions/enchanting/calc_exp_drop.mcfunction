#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $EnchantingEXPBoost Temp = $EnchantingEXP Temp
scoreboard players operation $EnchantingEXPBoost Temp *= @s S_TotalEnchB
scoreboard players operation $EnchantingEXPBoost Temp /= c100 Constant
scoreboard players operation $EnchantingEXP Temp += $EnchantingEXPBoost Temp
#------------------------------------------#