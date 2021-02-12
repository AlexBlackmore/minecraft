#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------PERMANENT STORAGE------------#
execute as @p run function skyblock:multiplayer_storage/get
data modify storage blue:multiplayer_storage data.AccessoryBag set from entity @s Items
execute as @p run function skyblock:multiplayer_storage/save
#--------------COLLECT STATS---------------#
scoreboard players set @p P_AccessCount -1
execute as @p at @s run function stats:calculate/stats
data remove entity @s Items
#------------------------------------------#