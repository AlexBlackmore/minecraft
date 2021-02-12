#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
#Remove increase from instant damage potion effect
scoreboard players remove @s[gamemode=!creative] P_DamageTaken 60
#Apply damage
scoreboard players operation @s PlayerEHP -= @s P_DamageTaken

scoreboard players operation $DamageOutput Temp = @s PlayerHP
function stats:calculate/current_health
scoreboard players operation $DamageOutput Temp -= @s PlayerHP
#------------------------------------------#