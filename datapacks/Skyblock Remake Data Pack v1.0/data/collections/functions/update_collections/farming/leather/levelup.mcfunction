#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_LeatherL matches -1 run function collections:reward_messages/farming/leather/0
execute if score @s C_LeatherL matches 0 run function collections:reward_messages/farming/leather/1
execute if score @s C_LeatherL matches 1 run function collections:reward_messages/farming/leather/2
execute if score @s C_LeatherL matches 2 run function collections:reward_messages/farming/leather/3
execute if score @s C_LeatherL matches 3 run function collections:reward_messages/farming/leather/4
execute if score @s C_LeatherL matches 4 run function collections:reward_messages/farming/leather/5
execute if score @s C_LeatherL matches 5 run function collections:reward_messages/farming/leather/6
execute if score @s C_LeatherL matches 6 run function collections:reward_messages/farming/leather/7
execute if score @s C_LeatherL matches 7 run function collections:reward_messages/farming/leather/8
execute if score @s C_LeatherL matches 8 run function collections:reward_messages/farming/leather/9
execute if score @s C_LeatherL matches 9 run function collections:reward_messages/farming/leather/10
scoreboard players add @s C_LeatherL 1
scoreboard players add @s C_LeatherNL 1
execute if score @s C_Leather >= @s C_LeatherN unless score @s C_LeatherL matches 10.. run function collections:update_collections/farming/leather/levelup
#------------------------------------------#