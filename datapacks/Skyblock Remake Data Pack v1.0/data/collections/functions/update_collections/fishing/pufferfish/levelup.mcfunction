#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PufferfishL matches -1 run function collections:reward_messages/fishing/pufferfish/0
execute if score @s C_PufferfishL matches 0 run function collections:reward_messages/fishing/pufferfish/1
execute if score @s C_PufferfishL matches 1 run function collections:reward_messages/fishing/pufferfish/2
execute if score @s C_PufferfishL matches 2 run function collections:reward_messages/fishing/pufferfish/3
execute if score @s C_PufferfishL matches 3 run function collections:reward_messages/fishing/pufferfish/4
execute if score @s C_PufferfishL matches 4 run function collections:reward_messages/fishing/pufferfish/5
execute if score @s C_PufferfishL matches 5 run function collections:reward_messages/fishing/pufferfish/6
scoreboard players add @s C_PufferfishL 1
scoreboard players add @s C_PufferfishNL 1
execute if score @s C_Pufferfish >= @s C_PufferfishN unless score @s C_PufferfishL matches 6.. run function collections:update_collections/fishing/pufferfish/levelup
#------------------------------------------#