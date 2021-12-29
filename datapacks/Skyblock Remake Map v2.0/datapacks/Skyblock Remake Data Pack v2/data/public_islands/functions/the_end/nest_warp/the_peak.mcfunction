#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------NEST WARP-----------------#
tp @s 0.5 32 67.5 -180 0
tellraw @s [{"text":"Warped to ","color":"light_purple"},{"text":"The Peak","color":"dark_purple"},{"text":"!","color":"light_purple"}]
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1 1
#------------------------------------------#