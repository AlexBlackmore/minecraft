#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------REMOVE HEALTH---------------#
execute if score $DamageOutput Temp matches ..-1 run scoreboard players set $DamageOutput Temp 2147483647
scoreboard players operation @s P_Health -= $DamageOutput Temp
#------------------------------------------#