#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
#Remove increase from instant damage potion effect
scoreboard players remove @s P_DamageTaken 60
#Apply damage
scoreboard players operation $DamageOutput Temp = @s P_DamageTaken

execute unless score @s PlayerAHP matches 1.. run scoreboard players operation @s PlayerHP -= $DamageOutput Temp
execute if score @s PlayerAHP matches 1.. run function stats:absorption/true_damaged
function stats:calculate/current_effective_health
#------------------------------------------#