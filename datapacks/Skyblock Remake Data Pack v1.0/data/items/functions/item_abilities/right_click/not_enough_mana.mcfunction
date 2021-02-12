#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------FAIL-------------------#
tellraw @s ["",{"text":"You do not have enough mana to do this!","color":"red"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0 1
#------------------------------------------#