#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
scoreboard players operation Global End_EyeCool = @s End_EyeCool
scoreboard players operation Global End_EyeCool /= c20 Constant
tellraw @s ["",{"text":"You must wait ","color":"red"},{"score":{"name":"Global","objective":"End_EyeCool"},"color":"yellow"},{"text":"s","color":"yellow"},{"text":" to do that!","color":"red"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0 1
#------------------------------------------#