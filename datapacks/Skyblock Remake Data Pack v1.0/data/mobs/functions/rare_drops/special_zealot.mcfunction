#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"RARE DROP! ","bold":true,"color":"gold"},{"text":"Summoning Eye","color":"dark_purple"}]
advancement revoke @s only mobs:rare_drops/special_zealot
#------------------------------------------#