#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------STATS-------------------#
scoreboard players set @s P_Speed 400
execute if score @s P_BonusSpeed matches 401.. run scoreboard players set @s P_BonusSpeed 400
execute if score @s P_BaseSpeed matches 401.. run scoreboard players set @s P_BaseSpeed 400
#------------------------------------------#