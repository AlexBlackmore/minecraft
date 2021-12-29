#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
#Correct input
scoreboard players operation @s P_DamageTaken /= c5 Constant
scoreboard players remove @s P_DamageTaken 5
#Apply damage
scoreboard players operation $DamageOutput Temp = @s P_DamageTaken

scoreboard players operation @s PlayerHP -= $DamageOutput Temp
function stats:calculate/current_effective_health
#------------------------------------------#