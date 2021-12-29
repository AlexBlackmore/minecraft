#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Pshard += @p C_Pshard
execute if score @s C_Pshard >= @s C_PshardN unless score @s C_PshardL matches 5.. run function collections:update_collections/fishing/p_shard/levelup
scoreboard players reset @p C_Pshard
#------------------------------------------#