#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
execute unless block ~ ~ ~ lava run scoreboard players set @s ApplyTrueDamage 65
execute if block ~ ~ ~ lava run scoreboard players set @s ApplyTrueDamage 80
scoreboard players set @s P_IconColour 3
scoreboard players reset @s P_DamageTaken
advancement revoke @s only stats:manual_damage/overrides/burn
#------------------------------------------#