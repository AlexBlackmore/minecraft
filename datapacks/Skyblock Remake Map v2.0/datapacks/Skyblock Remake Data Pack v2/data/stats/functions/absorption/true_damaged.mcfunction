#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
scoreboard players operation @s PlayerAHP -= $DamageOutput Temp
execute if score @s PlayerAHP matches ..-1 run scoreboard players operation @s PlayerHP += @s PlayerAHP
execute if score @s PlayerAHP matches ..-1 run function stats:absorption/reset_absorption
execute if score @s PlayerAHP matches 1.. run function stats:calculate/current_absorption_effective_health
#------------------------------------------#