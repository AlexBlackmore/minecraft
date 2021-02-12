#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_LilypadL matches -1 run function collections:reward_messages/fishing/lilypad/0
execute if score @s C_LilypadL matches 0 run function collections:reward_messages/fishing/lilypad/1
execute if score @s C_LilypadL matches 1 run function collections:reward_messages/fishing/lilypad/2
execute if score @s C_LilypadL matches 2 run function collections:reward_messages/fishing/lilypad/3
execute if score @s C_LilypadL matches 3 run function collections:reward_messages/fishing/lilypad/4
execute if score @s C_LilypadL matches 4 run function collections:reward_messages/fishing/lilypad/5
execute if score @s C_LilypadL matches 5 run function collections:reward_messages/fishing/lilypad/6
execute if score @s C_LilypadL matches 6 run function collections:reward_messages/fishing/lilypad/7
execute if score @s C_LilypadL matches 7 run function collections:reward_messages/fishing/lilypad/8
execute if score @s C_LilypadL matches 8 run function collections:reward_messages/fishing/lilypad/9
scoreboard players add @s C_LilypadL 1
scoreboard players add @s C_LilypadNL 1
execute if score @s C_Lilypad >= @s C_LilypadN unless score @s C_LilypadL matches 9.. run function collections:update_collections/fishing/lilypad/levelup
#------------------------------------------#