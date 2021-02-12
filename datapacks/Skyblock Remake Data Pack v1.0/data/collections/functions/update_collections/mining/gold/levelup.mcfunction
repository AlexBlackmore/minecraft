#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_GoldL matches -1 run function collections:reward_messages/mining/gold/0
execute if score @s C_GoldL matches 0 run function collections:reward_messages/mining/gold/1
execute if score @s C_GoldL matches 1 run function collections:reward_messages/mining/gold/2
execute if score @s C_GoldL matches 2 run function collections:reward_messages/mining/gold/3
execute if score @s C_GoldL matches 3 run function collections:reward_messages/mining/gold/4
execute if score @s C_GoldL matches 4 run function collections:reward_messages/mining/gold/5
execute if score @s C_GoldL matches 5 run function collections:reward_messages/mining/gold/6
execute if score @s C_GoldL matches 6 run function collections:reward_messages/mining/gold/7
execute if score @s C_GoldL matches 7 run function collections:reward_messages/mining/gold/8
execute if score @s C_GoldL matches 8 run function collections:reward_messages/mining/gold/9
scoreboard players add @s C_GoldL 1
scoreboard players add @s C_GoldNL 1
execute if score @s C_Gold >= @s C_GoldN unless score @s C_GoldL matches 9.. run function collections:update_collections/mining/gold/levelup
#------------------------------------------#