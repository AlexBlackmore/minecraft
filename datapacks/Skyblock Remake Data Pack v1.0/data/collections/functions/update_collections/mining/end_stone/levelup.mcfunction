#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_EndstoneL matches -1 run function collections:reward_messages/mining/end_stone/0
execute if score @s C_EndstoneL matches 0 run function collections:reward_messages/mining/end_stone/1
execute if score @s C_EndstoneL matches 1 run function collections:reward_messages/mining/end_stone/2
execute if score @s C_EndstoneL matches 2 run function collections:reward_messages/mining/end_stone/3
execute if score @s C_EndstoneL matches 3 run function collections:reward_messages/mining/end_stone/4
execute if score @s C_EndstoneL matches 4 run function collections:reward_messages/mining/end_stone/5
execute if score @s C_EndstoneL matches 5 run function collections:reward_messages/mining/end_stone/6
execute if score @s C_EndstoneL matches 6 run function collections:reward_messages/mining/end_stone/7
execute if score @s C_EndstoneL matches 7 run function collections:reward_messages/mining/end_stone/8
execute if score @s C_EndstoneL matches 8 run function collections:reward_messages/mining/end_stone/9
scoreboard players add @s C_EndstoneL 1
scoreboard players add @s C_EndstoneNL 1
execute if score @s C_Endstone >= @s C_EndstoneN unless score @s C_EndstoneL matches 9.. run function collections:update_collections/mining/end_stone/levelup
#------------------------------------------#