#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_IceL matches -1 run function collections:reward_messages/mining/ice/0
execute if score @s C_IceL matches 0 run function collections:reward_messages/mining/ice/1
execute if score @s C_IceL matches 1 run function collections:reward_messages/mining/ice/2
execute if score @s C_IceL matches 2 run function collections:reward_messages/mining/ice/3
execute if score @s C_IceL matches 3 run function collections:reward_messages/mining/ice/4
execute if score @s C_IceL matches 4 run function collections:reward_messages/mining/ice/5
execute if score @s C_IceL matches 5 run function collections:reward_messages/mining/ice/6
execute if score @s C_IceL matches 6 run function collections:reward_messages/mining/ice/7
execute if score @s C_IceL matches 7 run function collections:reward_messages/mining/ice/8
execute if score @s C_IceL matches 8 run function collections:reward_messages/mining/ice/9
execute if score @s C_IceL matches 9 run function collections:reward_messages/mining/ice/10
scoreboard players add @s C_IceL 1
scoreboard players add @s C_IceNL 1
execute if score @s C_Ice >= @s C_IceN unless score @s C_IceL matches 10.. run function collections:update_collections/mining/ice/levelup
#------------------------------------------#