#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PotatoL matches -1 run function collections:reward_messages/farming/potato/0
execute if score @s C_PotatoL matches 0 run function collections:reward_messages/farming/potato/1
execute if score @s C_PotatoL matches 1 run function collections:reward_messages/farming/potato/2
execute if score @s C_PotatoL matches 2 run function collections:reward_messages/farming/potato/3
execute if score @s C_PotatoL matches 3 run function collections:reward_messages/farming/potato/4
execute if score @s C_PotatoL matches 4 run function collections:reward_messages/farming/potato/5
execute if score @s C_PotatoL matches 5 run function collections:reward_messages/farming/potato/6
execute if score @s C_PotatoL matches 6 run function collections:reward_messages/farming/potato/7
execute if score @s C_PotatoL matches 7 run function collections:reward_messages/farming/potato/8
execute if score @s C_PotatoL matches 8 run function collections:reward_messages/farming/potato/9
scoreboard players add @s C_PotatoL 1
scoreboard players add @s C_PotatoNL 1
execute if score @s C_Potato >= @s C_PotatoN unless score @s C_PotatoL matches 9.. run function collections:update_collections/farming/potato/levelup
#------------------------------------------#