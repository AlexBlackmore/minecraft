#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------MAXED OUT STATS--------------#
execute if score @s P_AtkSpeed matches 101.. run function stats:stat_update/maxed/attack_speed
#------------PLAYER STAT ITEM--------------#
function stats:set_attribute/attack_speed/l9/l9_0
#-----------------UPDATES------------------#
scoreboard players operation @s P_PreAtkSpeed = @s P_AtkSpeed
#------------------------------------------#