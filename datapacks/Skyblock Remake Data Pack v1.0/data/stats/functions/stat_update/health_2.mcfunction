#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STATS UPDATE---------------#
function stats:calculate/regeneration_amount
#------------------SET HP------------------#
function stats:calculate/max_effective_health
execute if score @s P_PreHealth < @s P_Health if score @s PlayerHP >= @s P_PreHealth run function stats:restore_health
#-----------------UPDATES------------------#
scoreboard players operation @s P_PreHealth = @s P_Health
#------------------------------------------#