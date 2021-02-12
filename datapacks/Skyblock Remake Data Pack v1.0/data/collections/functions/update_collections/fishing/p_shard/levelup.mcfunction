#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PshardL matches -1 run function collections:reward_messages/fishing/p_shard/0
execute if score @s C_PshardL matches 0 run function collections:reward_messages/fishing/p_shard/1
execute if score @s C_PshardL matches 1 run function collections:reward_messages/fishing/p_shard/2
execute if score @s C_PshardL matches 2 run function collections:reward_messages/fishing/p_shard/3
execute if score @s C_PshardL matches 3 run function collections:reward_messages/fishing/p_shard/4
execute if score @s C_PshardL matches 4 run function collections:reward_messages/fishing/p_shard/5
scoreboard players add @s C_PshardL 1
scoreboard players add @s C_PshardNL 1
execute if score @s C_Pshard >= @s C_PshardN unless score @s C_PshardL matches 5.. run function collections:update_collections/fishing/p_shard/levelup
#------------------------------------------#