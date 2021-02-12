#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------SETUP-------------------#
execute unless entity @p[scores={ShootBow=1..},distance=..20] unless entity @p[scores={ShootCrossbow=1..},distance=..20] run function stats:arrow/mob_stats
execute if entity @p[scores={ShootBow=1..},distance=..20] run function stats:arrow/player_stats
execute if entity @p[scores={ShootCrossbow=1..},distance=..20] run function stats:arrow/player_stats
tag @s add GotStats
#------------------------------------------#