#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
tellraw @p ["",{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"},{"text":"\n"},{"text":"  COLLECTION LEVEL UP ","bold":true,"color":"gold"},{"text":"Cobblestone ","color":"yellow"},{"text":"6","color":"dark_gray"},{"text":"➜","color":"gray"},{"text":"7","color":"dark_aqua"},{"text":"\n"},{"text":"\n"},{"text":"  REWARD","bold":true,"color":"green"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Miner's Outfit Helmet","color":"green"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Miner's Outfit Chestplate","color":"green"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Miner's Outfit Leggings","color":"green"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Miner's Outfit Boots","color":"green"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"}]
scoreboard players operation @s C_CobblestoneN = Cobblestone8 C_Levels
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 2 1
#------------------------------------------#