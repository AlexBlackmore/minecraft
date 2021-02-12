#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_PorkchopL matches -1 run function collections:reward_messages/farming/porkchop/0
execute if score @s C_PorkchopL matches 0 run function collections:reward_messages/farming/porkchop/1
execute if score @s C_PorkchopL matches 1 run function collections:reward_messages/farming/porkchop/2
execute if score @s C_PorkchopL matches 2 run function collections:reward_messages/farming/porkchop/3
execute if score @s C_PorkchopL matches 3 run function collections:reward_messages/farming/porkchop/4
execute if score @s C_PorkchopL matches 4 run function collections:reward_messages/farming/porkchop/5
execute if score @s C_PorkchopL matches 5 run function collections:reward_messages/farming/porkchop/6
execute if score @s C_PorkchopL matches 6 run function collections:reward_messages/farming/porkchop/7
execute if score @s C_PorkchopL matches 7 run function collections:reward_messages/farming/porkchop/8
execute if score @s C_PorkchopL matches 8 run function collections:reward_messages/farming/porkchop/9
scoreboard players add @s C_PorkchopL 1
scoreboard players add @s C_PorkchopNL 1
execute if score @s C_Porkchop >= @s C_PorkchopN unless score @s C_PorkchopL matches 9.. run function collections:update_collections/farming/porkchop/levelup
#------------------------------------------#