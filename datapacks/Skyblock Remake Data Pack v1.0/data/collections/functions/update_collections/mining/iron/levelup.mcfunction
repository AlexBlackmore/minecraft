#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_IronL matches -1 run function collections:reward_messages/mining/iron/0
execute if score @s C_IronL matches 0 run function collections:reward_messages/mining/iron/1
execute if score @s C_IronL matches 1 run function collections:reward_messages/mining/iron/2
execute if score @s C_IronL matches 2 run function collections:reward_messages/mining/iron/3
execute if score @s C_IronL matches 3 run function collections:reward_messages/mining/iron/4
execute if score @s C_IronL matches 4 run function collections:reward_messages/mining/iron/5
execute if score @s C_IronL matches 5 run function collections:reward_messages/mining/iron/6
execute if score @s C_IronL matches 6 run function collections:reward_messages/mining/iron/7
execute if score @s C_IronL matches 7 run function collections:reward_messages/mining/iron/8
execute if score @s C_IronL matches 8 run function collections:reward_messages/mining/iron/9
scoreboard players add @s C_IronL 1
scoreboard players add @s C_IronNL 1
execute if score @s C_Iron >= @s C_IronN unless score @s C_IronL matches 9.. run function collections:update_collections/mining/iron/levelup
#------------------------------------------#