#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CodL matches -1 run function collections:reward_messages/fishing/cod/0
execute if score @s C_CodL matches 0 run function collections:reward_messages/fishing/cod/1
execute if score @s C_CodL matches 1 run function collections:reward_messages/fishing/cod/2
execute if score @s C_CodL matches 2 run function collections:reward_messages/fishing/cod/3
execute if score @s C_CodL matches 3 run function collections:reward_messages/fishing/cod/4
execute if score @s C_CodL matches 4 run function collections:reward_messages/fishing/cod/5
execute if score @s C_CodL matches 5 run function collections:reward_messages/fishing/cod/6
execute if score @s C_CodL matches 6 run function collections:reward_messages/fishing/cod/7
execute if score @s C_CodL matches 7 run function collections:reward_messages/fishing/cod/8
execute if score @s C_CodL matches 8 run function collections:reward_messages/fishing/cod/9
scoreboard players add @s C_CodL 1
scoreboard players add @s C_CodNL 1
execute if score @s C_Cod >= @s C_CodN unless score @s C_CodL matches 9.. run function collections:update_collections/fishing/cod/levelup
#------------------------------------------#