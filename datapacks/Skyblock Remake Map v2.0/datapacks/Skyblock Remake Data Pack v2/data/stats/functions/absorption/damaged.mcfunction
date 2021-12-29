#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
scoreboard players operation @s PlayerAEHP -= @s P_DamageTaken
execute if score @s PlayerAEHP matches ..-1 run scoreboard players operation @s PlayerEHP += @s PlayerAEHP

#Find HP Difference (from absorption) for damage display
scoreboard players operation $DamageOutput2 Temp = @s PlayerAHP
function stats:calculate/current_absorption_health
scoreboard players operation $DamageOutput2 Temp -= @s PlayerAHP

#Reset Absorption if all is lost
execute if score @s PlayerAEHP matches ..-1 run function stats:absorption/reset_absorption
#------------------------------------------#