#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
tellraw @p ["",{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"},{"text":"\n"},{"text":"  COLLECTION LEVEL UP ","bold":true,"color":"gold"},{"text":"Mushroom ","color":"yellow"},{"text":"2","color":"dark_gray"},{"text":"➜","color":"gray"},{"text":"3","color":"dark_aqua"},{"text":"\n"},{"text":"\n"},{"text":"  REWARD","bold":true,"color":"green"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Mushroom Helmet","color":"white"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Mushroom Chestplate","color":"white"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Mushroom Leggings","color":"white"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Mushroom Boots","color":"white"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"}]
scoreboard players operation @s C_MushroomN = Mushroom4 C_Levels
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 2 1
#------------------------------------------#