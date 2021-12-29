#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------KILLS CALC----------------#
execute if score @s S_CQuestType matches 1 run scoreboard players operation @s S_KillAmount = @s S_ZNeededExp
execute if score @s S_CQuestType matches 2 run scoreboard players operation @s S_KillAmount = @s S_SNeededExp
execute if score @s S_CQuestType matches 3 run scoreboard players operation @s S_KillAmount = @s S_WNeededExp

scoreboard players operation @s S_KillAmount /= $CombatEXP Temp
scoreboard players reset $CombatEXP Temp
function slayers:scoreboard/tree
