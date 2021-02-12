#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_MuttonL matches -1 run function collections:reward_messages/farming/mutton/0
execute if score @s C_MuttonL matches 0 run function collections:reward_messages/farming/mutton/1
execute if score @s C_MuttonL matches 1 run function collections:reward_messages/farming/mutton/2
execute if score @s C_MuttonL matches 2 run function collections:reward_messages/farming/mutton/3
execute if score @s C_MuttonL matches 3 run function collections:reward_messages/farming/mutton/4
execute if score @s C_MuttonL matches 4 run function collections:reward_messages/farming/mutton/5
execute if score @s C_MuttonL matches 5 run function collections:reward_messages/farming/mutton/6
execute if score @s C_MuttonL matches 6 run function collections:reward_messages/farming/mutton/7
execute if score @s C_MuttonL matches 7 run function collections:reward_messages/farming/mutton/8
execute if score @s C_MuttonL matches 8 run function collections:reward_messages/farming/mutton/9
scoreboard players add @s C_MuttonL 1
scoreboard players add @s C_MuttonNL 1
execute if score @s C_Mutton >= @s C_MuttonN unless score @s C_MuttonL matches 9.. run function collections:update_collections/farming/mutton/levelup
#------------------------------------------#