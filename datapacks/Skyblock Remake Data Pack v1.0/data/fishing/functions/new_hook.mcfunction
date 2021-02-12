#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------SETUP-------------------#
execute as @p[scores={ShotRod=1..},distance=..20] if entity @s[tag=Held_GrapplingHook] run function items:item_abilities/grappling_hook/new_throw
execute if entity @p[scores={ShotRod=1..},distance=..20] run function stats:collect_stats/hook
tag @s add GotStats
#------------------------------------------#