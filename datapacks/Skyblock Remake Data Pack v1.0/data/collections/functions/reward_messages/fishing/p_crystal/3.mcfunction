#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
tellraw @p ["",{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"},{"text":"\n"},{"text":"  COLLECTION LEVEL UP ","bold":true,"color":"gold"},{"text":"Prismarine Crystals ","color":"yellow"},{"text":"2","color":"gray"},{"text":"➜","color":"gray"},{"text":"3","color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":"  REWARD","bold":true,"color":"green"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"}]
scoreboard players operation @s C_PcrystalN = Pcrystal4 C_Levels
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 2 1
#------------------------------------------#