#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
tellraw @p ["",{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"},{"text":"\n"},{"text":"  COLLECTION LEVEL UP ","bold":true,"color":"gold"},{"text":"Redstone ","color":"yellow"},{"text":"8","color":"dark_gray"},{"text":"➜","color":"gray"},{"text":"9","color":"dark_aqua"},{"text":"\n"},{"text":"\n"},{"text":"  REWARD","bold":true,"color":"green"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Personal Compactor 4000","color":"green"},{"text":" Recipe","color":"gray"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Large Accessory Bag Upgrade","color":"green"},{"text":"\n"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"}]
scoreboard players operation @s C_RedstoneN = Redstone10 C_Levels
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 2 1
#-----------ACCESSORY BAG SLOTS------------#
scoreboard players set @p BaseAccessSlots 15
execute as @p run function menu:accessory_bag/avaliable_slots
#------------------------------------------#