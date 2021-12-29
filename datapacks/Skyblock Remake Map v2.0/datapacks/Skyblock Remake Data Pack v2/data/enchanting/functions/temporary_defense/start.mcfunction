#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ADD TEMP DEFENCE-------------#
scoreboard players operation @s P_MultDefense += @s E_BonusDef
#-------RECALCULATE CURRENT EHP & HP-------#
scoreboard players operation @s PlayerEHP = @s PlayerHP
scoreboard players operation @s PlayerEHP *= @s P_MultDefense
scoreboard players operation @s PlayerEHP /= c100 Constant

function stats:calculate/current_health
#------------------------------------------#