#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_CocoaL matches -1 run function collections:reward_messages/farming/cocoa/0
execute if score @s C_CocoaL matches 0 run function collections:reward_messages/farming/cocoa/1
execute if score @s C_CocoaL matches 1 run function collections:reward_messages/farming/cocoa/2
execute if score @s C_CocoaL matches 2 run function collections:reward_messages/farming/cocoa/3
execute if score @s C_CocoaL matches 3 run function collections:reward_messages/farming/cocoa/4
execute if score @s C_CocoaL matches 4 run function collections:reward_messages/farming/cocoa/5
execute if score @s C_CocoaL matches 5 run function collections:reward_messages/farming/cocoa/6
execute if score @s C_CocoaL matches 6 run function collections:reward_messages/farming/cocoa/7
execute if score @s C_CocoaL matches 7 run function collections:reward_messages/farming/cocoa/8
execute if score @s C_CocoaL matches 8 run function collections:reward_messages/farming/cocoa/9
scoreboard players add @s C_CocoaL 1
scoreboard players add @s C_CocoaNL 1
execute if score @s C_Cocoa >= @s C_CocoaN unless score @s C_CocoaL matches 9.. run function collections:update_collections/farming/cocoa/levelup
#------------------------------------------#