#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CoalL matches -1 run function collections:reward_messages/mining/coal/0
execute if score @s C_CoalL matches 0 run function collections:reward_messages/mining/coal/1
execute if score @s C_CoalL matches 1 run function collections:reward_messages/mining/coal/2
execute if score @s C_CoalL matches 2 run function collections:reward_messages/mining/coal/3
execute if score @s C_CoalL matches 3 run function collections:reward_messages/mining/coal/4
execute if score @s C_CoalL matches 4 run function collections:reward_messages/mining/coal/5
execute if score @s C_CoalL matches 5 run function collections:reward_messages/mining/coal/6
execute if score @s C_CoalL matches 6 run function collections:reward_messages/mining/coal/7
execute if score @s C_CoalL matches 7 run function collections:reward_messages/mining/coal/8
execute if score @s C_CoalL matches 8 run function collections:reward_messages/mining/coal/9
scoreboard players add @s C_CoalL 1
scoreboard players add @s C_CoalNL 1
execute if score @s C_Coal >= @s C_CoalN unless score @s C_CoalL matches 9.. run function collections:update_collections/mining/coal/levelup
#------------------------------------------#