#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_NetherwartL matches -1 run function collections:reward_messages/farming/nether_wart/0
execute if score @s C_NetherwartL matches 0 run function collections:reward_messages/farming/nether_wart/1
execute if score @s C_NetherwartL matches 1 run function collections:reward_messages/farming/nether_wart/2
execute if score @s C_NetherwartL matches 2 run function collections:reward_messages/farming/nether_wart/3
execute if score @s C_NetherwartL matches 3 run function collections:reward_messages/farming/nether_wart/4
execute if score @s C_NetherwartL matches 4 run function collections:reward_messages/farming/nether_wart/5
execute if score @s C_NetherwartL matches 5 run function collections:reward_messages/farming/nether_wart/6
execute if score @s C_NetherwartL matches 6 run function collections:reward_messages/farming/nether_wart/7
execute if score @s C_NetherwartL matches 7 run function collections:reward_messages/farming/nether_wart/8
execute if score @s C_NetherwartL matches 8 run function collections:reward_messages/farming/nether_wart/9
scoreboard players add @s C_NetherwartL 1
scoreboard players add @s C_NetherwartNL 1
execute if score @s C_Netherwart >= @s C_NetherwartN unless score @s C_NetherwartL matches 9.. run function collections:update_collections/farming/nether_wart/levelup
#------------------------------------------#