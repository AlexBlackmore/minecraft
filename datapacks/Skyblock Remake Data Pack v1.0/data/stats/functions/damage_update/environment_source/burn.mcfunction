#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
execute if entity @s[scores={E_FireAspectTime=1..}] run scoreboard players operation $DamageOutput Temp = @s E_FireAspectLVL
execute unless entity @s[scores={E_FireAspectTime=1..}] run scoreboard players set $DamageOutput Temp 5
execute if block ~ ~ ~ lava run scoreboard players set $DamageOutput Temp 20
#--------------REMOVE HEALTH---------------#
function stats:calculate/mob_health_after_damage
#------------------------------------------#