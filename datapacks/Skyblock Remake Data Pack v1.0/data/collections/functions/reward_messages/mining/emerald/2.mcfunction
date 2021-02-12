#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
tellraw @p ["",{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"},{"text":"\n"},{"text":"  COLLECTION LEVEL UP ","bold":true,"color":"gold"},{"text":"Emerald ","color":"yellow"},{"text":"1","color":"gray"},{"text":"➜","color":"gray"},{"text":"2","color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":"  REWARD","bold":true,"color":"green"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"}]
scoreboard players operation @s C_EmeraldN = Emerald3 C_Levels
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 2 1
#------------------------------------------#