#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
#Apply damage
scoreboard players operation $DamageOutput Temp = @s P_DamageTaken
#--------------REMOVE HEALTH---------------#
function stats:calculate/mob_health_after_damage
#------------------------------------------#