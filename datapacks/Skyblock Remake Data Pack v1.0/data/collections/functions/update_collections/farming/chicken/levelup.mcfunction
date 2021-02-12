#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_ChickenL matches -1 run function collections:reward_messages/farming/chicken/0
execute if score @s C_ChickenL matches 0 run function collections:reward_messages/farming/chicken/1
execute if score @s C_ChickenL matches 1 run function collections:reward_messages/farming/chicken/2
execute if score @s C_ChickenL matches 2 run function collections:reward_messages/farming/chicken/3
execute if score @s C_ChickenL matches 3 run function collections:reward_messages/farming/chicken/4
execute if score @s C_ChickenL matches 4 run function collections:reward_messages/farming/chicken/5
execute if score @s C_ChickenL matches 5 run function collections:reward_messages/farming/chicken/6
execute if score @s C_ChickenL matches 6 run function collections:reward_messages/farming/chicken/7
execute if score @s C_ChickenL matches 7 run function collections:reward_messages/farming/chicken/8
execute if score @s C_ChickenL matches 8 run function collections:reward_messages/farming/chicken/9
scoreboard players add @s C_ChickenL 1
scoreboard players add @s C_ChickenNL 1
execute if score @s C_Chicken >= @s C_ChickenN unless score @s C_ChickenL matches 9.. run function collections:update_collections/farming/chicken/levelup
#------------------------------------------#