#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------CHANGE HEALTH---------------#
scoreboard players operation $DamageOutput Temp *= @p[tag=Wear_Thorns,nbt={HurtTime:9s}] E_ThornsAmount
scoreboard players operation $DamageOutput Temp /= c100 Constant
#--------------REMOVE HEALTH---------------#
function stats:calculate/mob_health_after_damage
#------------------------------------------#