#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $PetEXPBoost Temp = $PetEXP Temp
scoreboard players operation $PetEXPBoost Temp *= @s P_PetEXPBoost
scoreboard players operation $PetEXPBoost Temp /= c100 Constant
scoreboard players operation $PetEXP Temp += $PetEXPBoost Temp
#------------------------------------------#