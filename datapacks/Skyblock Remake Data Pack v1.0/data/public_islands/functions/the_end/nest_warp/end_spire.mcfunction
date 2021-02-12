#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------NEST WARP-----------------#
tp @s -49.5 56 46.5 -135 0
tellraw @s [{"text":"Warped to ","color":"light_purple"},{"text":"End Spire","color":"dark_purple"},{"text":"!","color":"light_purple"}]
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1 1
#------------------------------------------#