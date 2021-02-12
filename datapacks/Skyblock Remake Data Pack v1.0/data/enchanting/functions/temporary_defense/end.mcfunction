#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE TEMP DEFENCE-----------#
scoreboard players operation @s P_MultDefense -= @s E_BonusDef
#-------RECALCULATE CURRENT EHP & HP-------#
function stats:calculate/current_effective_health
function stats:calculate/current_health
#------------------RESETS------------------#
scoreboard players reset @s E_BonusDef
#------------------------------------------#