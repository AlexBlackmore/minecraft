#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_WheatL matches -1 run function collections:reward_messages/farming/wheat/0
execute if score @s C_WheatL matches 0 run function collections:reward_messages/farming/wheat/1
execute if score @s C_WheatL matches 1 run function collections:reward_messages/farming/wheat/2
execute if score @s C_WheatL matches 2 run function collections:reward_messages/farming/wheat/3
execute if score @s C_WheatL matches 3 run function collections:reward_messages/farming/wheat/4
execute if score @s C_WheatL matches 4 run function collections:reward_messages/farming/wheat/5
execute if score @s C_WheatL matches 5 run function collections:reward_messages/farming/wheat/6
execute if score @s C_WheatL matches 6 run function collections:reward_messages/farming/wheat/7
execute if score @s C_WheatL matches 7 run function collections:reward_messages/farming/wheat/8
execute if score @s C_WheatL matches 8 run function collections:reward_messages/farming/wheat/9
scoreboard players add @s C_WheatL 1
scoreboard players add @s C_WheatNL 1
execute if score @s C_Wheat >= @s C_WheatN unless score @s C_WheatL matches 9.. run function collections:update_collections/farming/wheat/levelup
#------------------------------------------#