#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------NEST WARP-----------------#
tp @s -29.5 18 -34.5 -45 0
tellraw @s [{"text":"Warped to ","color":"light_purple"},{"text":"Endertower","color":"dark_purple"},{"text":"!","color":"light_purple"}]
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1 1
#------------------------------------------#