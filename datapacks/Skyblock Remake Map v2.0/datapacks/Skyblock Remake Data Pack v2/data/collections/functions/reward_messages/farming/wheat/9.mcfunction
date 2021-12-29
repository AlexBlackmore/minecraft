#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
tellraw @p ["",{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"},{"text":"\n"},{"text":"  COLLECTION LEVEL UP ","bold":true,"color":"gold"},{"text":"Wheat ","color":"yellow"},{"text":"8","color":"dark_gray"},{"text":"➜","color":"gray"},{"text":"9","color":"dark_aqua"},{"text":"\n"},{"text":"\n"},{"text":"  REWARD","bold":true,"color":"green"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Farm Armor Helmet","color":"blue"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Farm Armor Chestplate","color":"blue"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Farm Armor Leggings","color":"blue"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Farm Armor Boots","color":"blue"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"}]
scoreboard players operation @s C_WheatN = Wheat10 C_Levels
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 2 1
#------------------------------------------#