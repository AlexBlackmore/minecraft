#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_FeatherL matches -1 run function collections:reward_messages/farming/feather/0
execute if score @s C_FeatherL matches 0 run function collections:reward_messages/farming/feather/1
execute if score @s C_FeatherL matches 1 run function collections:reward_messages/farming/feather/2
execute if score @s C_FeatherL matches 2 run function collections:reward_messages/farming/feather/3
execute if score @s C_FeatherL matches 3 run function collections:reward_messages/farming/feather/4
execute if score @s C_FeatherL matches 4 run function collections:reward_messages/farming/feather/5
execute if score @s C_FeatherL matches 5 run function collections:reward_messages/farming/feather/6
execute if score @s C_FeatherL matches 6 run function collections:reward_messages/farming/feather/7
execute if score @s C_FeatherL matches 7 run function collections:reward_messages/farming/feather/8
execute if score @s C_FeatherL matches 8 run function collections:reward_messages/farming/feather/9
scoreboard players add @s C_FeatherL 1
scoreboard players add @s C_FeatherNL 1
execute if score @s C_Feather >= @s C_FeatherN unless score @s C_FeatherL matches 9.. run function collections:update_collections/farming/feather/levelup
#------------------------------------------#