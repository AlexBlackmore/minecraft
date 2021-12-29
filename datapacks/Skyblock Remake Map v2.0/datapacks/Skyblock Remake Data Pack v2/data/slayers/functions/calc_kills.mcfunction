#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------KILLS CALC----------------#
scoreboard players operation @s S_Kills = @s S_CQuestEXP

scoreboard players operation @s S_Kills /= $CombatEXP Temp
function slayers:scoreboard/tree