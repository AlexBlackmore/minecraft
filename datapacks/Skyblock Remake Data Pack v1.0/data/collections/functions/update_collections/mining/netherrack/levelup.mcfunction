#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_NetherrackL matches -1 run function collections:reward_messages/mining/netherrack/0
execute if score @s C_NetherrackL matches 0 run function collections:reward_messages/mining/netherrack/1
execute if score @s C_NetherrackL matches 1 run function collections:reward_messages/mining/netherrack/2
execute if score @s C_NetherrackL matches 2 run function collections:reward_messages/mining/netherrack/3
scoreboard players add @s C_NetherrackL 1
scoreboard players add @s C_NetherrackNL 1
execute if score @s C_Netherrack >= @s C_NetherrackN unless score @s C_NetherrackL matches 3.. run function collections:update_collections/mining/netherrack/levelup
#------------------------------------------#