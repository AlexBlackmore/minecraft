#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_DiamondL matches -1 run function collections:reward_messages/mining/diamond/0
execute if score @s C_DiamondL matches 0 run function collections:reward_messages/mining/diamond/1
execute if score @s C_DiamondL matches 1 run function collections:reward_messages/mining/diamond/2
execute if score @s C_DiamondL matches 2 run function collections:reward_messages/mining/diamond/3
execute if score @s C_DiamondL matches 3 run function collections:reward_messages/mining/diamond/4
execute if score @s C_DiamondL matches 4 run function collections:reward_messages/mining/diamond/5
execute if score @s C_DiamondL matches 5 run function collections:reward_messages/mining/diamond/6
execute if score @s C_DiamondL matches 6 run function collections:reward_messages/mining/diamond/7
execute if score @s C_DiamondL matches 7 run function collections:reward_messages/mining/diamond/8
execute if score @s C_DiamondL matches 8 run function collections:reward_messages/mining/diamond/9
scoreboard players add @s C_DiamondL 1
scoreboard players add @s C_DiamondNL 1
execute if score @s C_Diamond >= @s C_DiamondN unless score @s C_DiamondL matches 9.. run function collections:update_collections/mining/diamond/levelup
#------------------------------------------#