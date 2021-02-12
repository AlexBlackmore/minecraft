#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SandL matches -1 run function collections:reward_messages/mining/sand/0
execute if score @s C_SandL matches 0 run function collections:reward_messages/mining/sand/1
execute if score @s C_SandL matches 1 run function collections:reward_messages/mining/sand/2
execute if score @s C_SandL matches 2 run function collections:reward_messages/mining/sand/3
execute if score @s C_SandL matches 3 run function collections:reward_messages/mining/sand/4
execute if score @s C_SandL matches 4 run function collections:reward_messages/mining/sand/5
execute if score @s C_SandL matches 5 run function collections:reward_messages/mining/sand/6
execute if score @s C_SandL matches 6 run function collections:reward_messages/mining/sand/7
scoreboard players add @s C_SandL 1
scoreboard players add @s C_SandNL 1
execute if score @s C_Sand >= @s C_SandN unless score @s C_SandL matches 7.. run function collections:update_collections/mining/sand/levelup
#------------------------------------------#