#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------STATS-------------------#
scoreboard players set @s P_Defense 21250000
execute if score @s P_BonusDefense matches 21250001.. run scoreboard players set @s P_BonusDefense 21250000
execute if score @s P_BaseDefense matches 21250001.. run scoreboard players set @s P_BaseDefense 21250000
#------------------------------------------#