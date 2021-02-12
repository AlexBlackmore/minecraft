#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------STATS-------------------#
scoreboard players set @s P_AtkSpeed 100
execute if score @s P_BonusAtkSpeed matches 101.. run scoreboard players set @s P_BonusAtkSpeed 100
execute if score @s P_BaseAtkSpeed matches 101.. run scoreboard players set @s P_BaseAtkSpeed 100
#------------------------------------------#