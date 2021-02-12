#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CarrotL matches -1 run function collections:reward_messages/farming/carrot/0
execute if score @s C_CarrotL matches 0 run function collections:reward_messages/farming/carrot/1
execute if score @s C_CarrotL matches 1 run function collections:reward_messages/farming/carrot/2
execute if score @s C_CarrotL matches 2 run function collections:reward_messages/farming/carrot/3
execute if score @s C_CarrotL matches 3 run function collections:reward_messages/farming/carrot/4
execute if score @s C_CarrotL matches 4 run function collections:reward_messages/farming/carrot/5
execute if score @s C_CarrotL matches 5 run function collections:reward_messages/farming/carrot/6
execute if score @s C_CarrotL matches 6 run function collections:reward_messages/farming/carrot/7
execute if score @s C_CarrotL matches 7 run function collections:reward_messages/farming/carrot/8
execute if score @s C_CarrotL matches 8 run function collections:reward_messages/farming/carrot/9
scoreboard players add @s C_CarrotL 1
scoreboard players add @s C_CarrotNL 1
execute if score @s C_Carrot >= @s C_CarrotN unless score @s C_CarrotL matches 9.. run function collections:update_collections/farming/carrot/levelup
#------------------------------------------#