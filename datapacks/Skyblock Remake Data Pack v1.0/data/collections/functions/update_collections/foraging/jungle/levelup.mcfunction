#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_JungleL matches -1 run function collections:reward_messages/foraging/jungle/0
execute if score @s C_JungleL matches 0 run function collections:reward_messages/foraging/jungle/1
execute if score @s C_JungleL matches 1 run function collections:reward_messages/foraging/jungle/2
execute if score @s C_JungleL matches 2 run function collections:reward_messages/foraging/jungle/3
execute if score @s C_JungleL matches 3 run function collections:reward_messages/foraging/jungle/4
execute if score @s C_JungleL matches 4 run function collections:reward_messages/foraging/jungle/5
execute if score @s C_JungleL matches 5 run function collections:reward_messages/foraging/jungle/6
execute if score @s C_JungleL matches 6 run function collections:reward_messages/foraging/jungle/7
execute if score @s C_JungleL matches 7 run function collections:reward_messages/foraging/jungle/8
execute if score @s C_JungleL matches 8 run function collections:reward_messages/foraging/jungle/9
scoreboard players add @s C_JungleL 1
scoreboard players add @s C_JungleNL 1
execute if score @s C_Jungle >= @s C_JungleN unless score @s C_JungleL matches 9.. run function collections:update_collections/foraging/jungle/levelup
#------------------------------------------#