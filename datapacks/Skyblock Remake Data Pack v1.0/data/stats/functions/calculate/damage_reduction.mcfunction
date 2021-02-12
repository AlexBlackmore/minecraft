#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------STAT CALCULATIONS-------------#
scoreboard players operation @s P_DmgReduction = @s P_Defense
scoreboard players operation @s P_DmgReduction *= c100 Constant
scoreboard players operation @s P_DmgReduction /= @s P_MultDefense
#------------------------------------------#