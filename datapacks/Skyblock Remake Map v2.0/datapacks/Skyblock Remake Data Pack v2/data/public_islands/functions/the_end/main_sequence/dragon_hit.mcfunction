#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------DURING DRAG SEQUENCE-----------#
tag @s add TargetEntity
execute as @e[type=ender_dragon,name=!"Ender Dragon"] at @s in skyblock:the_end run function stats:damage_update/to_dragon
advancement revoke @s only stats:hit_dragon
#------------------------------------------#