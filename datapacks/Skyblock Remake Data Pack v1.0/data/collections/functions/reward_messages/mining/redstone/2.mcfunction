#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
tellraw @p ["",{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"},{"text":"\n"},{"text":"  COLLECTION LEVEL UP ","bold":true,"color":"gold"},{"text":"Redstone ","color":"yellow"},{"text":"1","color":"gray"},{"text":"➜","color":"gray"},{"text":"2","color":"yellow"},{"text":"\n"},{"text":"\n"},{"text":"  REWARD","bold":true,"color":"green"},{"text":"\n"},{"text":"    ","color":"white"},{"text":"Small Accessory Bag Upgrade","color":"green"},{"text":"\n"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","bold":true,"color":"yellow"}]
scoreboard players operation @s C_RedstoneN = Redstone3 C_Levels
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 2 1
#-----------ACCESSORY BAG SLOTS------------#
scoreboard players set @p BaseAccessSlots 3
function menu:accessory_bag/avaliable_slots
#------------------------------------------#