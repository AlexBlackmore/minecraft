#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_RabbitL matches -1 run function collections:reward_messages/farming/rabbit/0
execute if score @s C_RabbitL matches 0 run function collections:reward_messages/farming/rabbit/1
execute if score @s C_RabbitL matches 1 run function collections:reward_messages/farming/rabbit/2
execute if score @s C_RabbitL matches 2 run function collections:reward_messages/farming/rabbit/3
execute if score @s C_RabbitL matches 3 run function collections:reward_messages/farming/rabbit/4
execute if score @s C_RabbitL matches 4 run function collections:reward_messages/farming/rabbit/5
execute if score @s C_RabbitL matches 5 run function collections:reward_messages/farming/rabbit/6
execute if score @s C_RabbitL matches 6 run function collections:reward_messages/farming/rabbit/7
execute if score @s C_RabbitL matches 7 run function collections:reward_messages/farming/rabbit/8
execute if score @s C_RabbitL matches 8 run function collections:reward_messages/farming/rabbit/9
scoreboard players add @s C_RabbitL 1
scoreboard players add @s C_RabbitNL 1
execute if score @s C_Rabbit >= @s C_RabbitN unless score @s C_RabbitL matches 9.. run function collections:update_collections/farming/rabbit/levelup
#------------------------------------------#