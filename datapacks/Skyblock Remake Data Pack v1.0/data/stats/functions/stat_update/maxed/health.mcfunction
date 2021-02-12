#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------STATS-------------------#
scoreboard players set @s P_Health 21250000
execute if score @s P_BonusHealth matches 21250001.. run scoreboard players set @s P_BonusHealth 21250000
execute if score @s P_BaseHealth matches 21250001.. run scoreboard players set @s P_BaseHealth 21250000
#------------------------------------------#