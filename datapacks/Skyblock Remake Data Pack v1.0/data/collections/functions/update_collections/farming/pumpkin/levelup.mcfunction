#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PumpkinL matches -1 run function collections:reward_messages/farming/pumpkin/0
execute if score @s C_PumpkinL matches 0 run function collections:reward_messages/farming/pumpkin/1
execute if score @s C_PumpkinL matches 1 run function collections:reward_messages/farming/pumpkin/2
execute if score @s C_PumpkinL matches 2 run function collections:reward_messages/farming/pumpkin/3
execute if score @s C_PumpkinL matches 3 run function collections:reward_messages/farming/pumpkin/4
execute if score @s C_PumpkinL matches 4 run function collections:reward_messages/farming/pumpkin/5
execute if score @s C_PumpkinL matches 5 run function collections:reward_messages/farming/pumpkin/6
execute if score @s C_PumpkinL matches 6 run function collections:reward_messages/farming/pumpkin/7
execute if score @s C_PumpkinL matches 7 run function collections:reward_messages/farming/pumpkin/8
execute if score @s C_PumpkinL matches 8 run function collections:reward_messages/farming/pumpkin/9
scoreboard players add @s C_PumpkinL 1
scoreboard players add @s C_PumpkinNL 1
execute if score @s C_Pumpkin >= @s C_PumpkinN unless score @s C_PumpkinL matches 9.. run function collections:update_collections/farming/pumpkin/levelup
#------------------------------------------#