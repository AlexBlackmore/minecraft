#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players set $RandomQuest Temp 4
scoreboard players operation $QuestCost Temp = Tier4Cost S_RInfos
function slayers:random_quest/check_coins