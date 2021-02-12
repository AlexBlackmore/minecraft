#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------MOB SPAWNING---------------#
execute if score $25Seconds TickTimer matches 1 run function public_islands:the_park/natural_spawns
#-----------------ISLANDS------------------#
execute as @e[type=wolf] at @s run data modify entity @s AngryAt set from entity @p[distance=..16] UUID
#------------------------------------------#