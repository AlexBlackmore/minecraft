#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_GravelL matches -1 run function collections:reward_messages/mining/gravel/0
execute if score @s C_GravelL matches 0 run function collections:reward_messages/mining/gravel/1
execute if score @s C_GravelL matches 1 run function collections:reward_messages/mining/gravel/2
execute if score @s C_GravelL matches 2 run function collections:reward_messages/mining/gravel/3
execute if score @s C_GravelL matches 3 run function collections:reward_messages/mining/gravel/4
execute if score @s C_GravelL matches 4 run function collections:reward_messages/mining/gravel/5
execute if score @s C_GravelL matches 5 run function collections:reward_messages/mining/gravel/6
execute if score @s C_GravelL matches 6 run function collections:reward_messages/mining/gravel/7
execute if score @s C_GravelL matches 7 run function collections:reward_messages/mining/gravel/8
execute if score @s C_GravelL matches 8 run function collections:reward_messages/mining/gravel/9
scoreboard players add @s C_GravelL 1
scoreboard players add @s C_GravelNL 1
execute if score @s C_Gravel >= @s C_GravelN unless score @s C_GravelL matches 9.. run function collections:update_collections/mining/gravel/levelup
#------------------------------------------#