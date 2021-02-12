#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------BASE FORMULA----------------#
scoreboard players set $DamageOutput Temp 1000
execute store result score $Health Temp run data get entity @s Health
scoreboard players operation $DamageOutput Temp -= $Health Temp
#--------------REMOVE HEALTH---------------#
function stats:calculate/mob_health_after_damage
#------------------------------------------#