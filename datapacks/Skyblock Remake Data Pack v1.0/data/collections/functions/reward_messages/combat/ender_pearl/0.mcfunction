#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
tellraw @p ["",{"text":"  COLLECTION UNLOCKED ","bold":true,"color":"gold"},{"text":"Ender Pearl","color":"yellow"}]
scoreboard players operation @s C_EnderpearlN = Enderpearl1 C_Levels
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 2 1
#------------------------------------------#