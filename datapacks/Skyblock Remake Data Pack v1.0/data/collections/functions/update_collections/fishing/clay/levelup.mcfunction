#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_ClayL matches -1 run function collections:reward_messages/fishing/clay/0
execute if score @s C_ClayL matches 0 run function collections:reward_messages/fishing/clay/1
execute if score @s C_ClayL matches 1 run function collections:reward_messages/fishing/clay/2
execute if score @s C_ClayL matches 2 run function collections:reward_messages/fishing/clay/3
execute if score @s C_ClayL matches 3 run function collections:reward_messages/fishing/clay/4
execute if score @s C_ClayL matches 4 run function collections:reward_messages/fishing/clay/5
scoreboard players add @s C_ClayL 1
scoreboard players add @s C_ClayNL 1
execute if score @s C_Clay >= @s C_ClayN unless score @s C_ClayL matches 5.. run function collections:update_collections/fishing/clay/levelup
#------------------------------------------#