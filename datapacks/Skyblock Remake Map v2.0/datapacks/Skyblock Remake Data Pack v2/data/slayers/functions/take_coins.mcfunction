#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------------EXP-------------------#
execute if score $PlayerCoins Temp >= $QuestCost Temp run scoreboard players operation @p AddCoins = $QuestCost Temp
execute if score $PlayerCoins Temp >= $QuestCost Temp run scoreboard players operation @p AddCoins *= c-1 Constant