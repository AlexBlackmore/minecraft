#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------DAMAGE ICON----------------#
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign
tag @e[type=ender_dragon,name=!"Ender Dragon"] add EntitySelf
execute if entity @s[tag=DragonCritIcon] run function stats:damage_icon/crit
execute if entity @s[tag=!DragonCritIcon] run function stats:damage_icon
tag @e[type=ender_dragon,name=!"Ender Dragon"] remove EntitySelf
execute in minecraft:overworld run setblock 29999978 1 29832 air
tag @s remove DamageDealtDragNew
#------------------------------------------#