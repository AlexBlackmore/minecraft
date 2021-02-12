#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_StringL matches -1 run function collections:reward_messages/combat/string/0
execute if score @s C_StringL matches 0 run function collections:reward_messages/combat/string/1
execute if score @s C_StringL matches 1 run function collections:reward_messages/combat/string/2
execute if score @s C_StringL matches 2 run function collections:reward_messages/combat/string/3
execute if score @s C_StringL matches 3 run function collections:reward_messages/combat/string/4
execute if score @s C_StringL matches 4 run function collections:reward_messages/combat/string/5
execute if score @s C_StringL matches 5 run function collections:reward_messages/combat/string/6
execute if score @s C_StringL matches 6 run function collections:reward_messages/combat/string/7
execute if score @s C_StringL matches 7 run function collections:reward_messages/combat/string/8
execute if score @s C_StringL matches 8 run function collections:reward_messages/combat/string/9
scoreboard players add @s C_StringL 1
scoreboard players add @s C_StringNL 1
execute if score @s C_String >= @s C_StringN unless score @s C_StringL matches 9.. run function collections:update_collections/combat/string/levelup
#------------------------------------------#