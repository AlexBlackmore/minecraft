#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_EmeraldL matches -1 run function collections:reward_messages/mining/emerald/0
execute if score @s C_EmeraldL matches 0 run function collections:reward_messages/mining/emerald/1
execute if score @s C_EmeraldL matches 1 run function collections:reward_messages/mining/emerald/2
execute if score @s C_EmeraldL matches 2 run function collections:reward_messages/mining/emerald/3
execute if score @s C_EmeraldL matches 3 run function collections:reward_messages/mining/emerald/4
execute if score @s C_EmeraldL matches 4 run function collections:reward_messages/mining/emerald/5
execute if score @s C_EmeraldL matches 5 run function collections:reward_messages/mining/emerald/6
execute if score @s C_EmeraldL matches 6 run function collections:reward_messages/mining/emerald/7
execute if score @s C_EmeraldL matches 7 run function collections:reward_messages/mining/emerald/8
execute if score @s C_EmeraldL matches 8 run function collections:reward_messages/mining/emerald/9
scoreboard players add @s C_EmeraldL 1
scoreboard players add @s C_EmeraldNL 1
execute if score @s C_Emerald >= @s C_EmeraldN unless score @s C_EmeraldL matches 9.. run function collections:update_collections/mining/emerald/levelup
#------------------------------------------#