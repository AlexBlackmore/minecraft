#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $RunecraftingEXPBoost Temp = $RunecraftEXP Temp
scoreboard players operation $RunecraftingEXPBoost Temp *= @s S_TotalRuneB
scoreboard players operation $RunecraftingEXPBoost Temp /= c100 Constant
scoreboard players operation $RunecraftEXP Temp += $RunecraftingEXPBoost Temp
#------------------------------------------#