#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_OakL matches -1 run function collections:reward_messages/foraging/oak/0
execute if score @s C_OakL matches 0 run function collections:reward_messages/foraging/oak/1
execute if score @s C_OakL matches 1 run function collections:reward_messages/foraging/oak/2
execute if score @s C_OakL matches 2 run function collections:reward_messages/foraging/oak/3
execute if score @s C_OakL matches 3 run function collections:reward_messages/foraging/oak/4
execute if score @s C_OakL matches 4 run function collections:reward_messages/foraging/oak/5
execute if score @s C_OakL matches 5 run function collections:reward_messages/foraging/oak/6
execute if score @s C_OakL matches 6 run function collections:reward_messages/foraging/oak/7
execute if score @s C_OakL matches 7 run function collections:reward_messages/foraging/oak/8
execute if score @s C_OakL matches 8 run function collections:reward_messages/foraging/oak/9
scoreboard players add @s C_OakL 1
scoreboard players add @s C_OakNL 1
execute if score @s C_Oak >= @s C_OakN unless score @s C_OakL matches 9.. run function collections:update_collections/foraging/oak/levelup
#------------------------------------------#