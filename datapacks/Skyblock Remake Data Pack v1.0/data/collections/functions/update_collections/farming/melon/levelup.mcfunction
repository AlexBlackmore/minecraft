#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_MelonL matches -1 run function collections:reward_messages/farming/melon/0
execute if score @s C_MelonL matches 0 run function collections:reward_messages/farming/melon/1
execute if score @s C_MelonL matches 1 run function collections:reward_messages/farming/melon/2
execute if score @s C_MelonL matches 2 run function collections:reward_messages/farming/melon/3
execute if score @s C_MelonL matches 3 run function collections:reward_messages/farming/melon/4
execute if score @s C_MelonL matches 4 run function collections:reward_messages/farming/melon/5
execute if score @s C_MelonL matches 5 run function collections:reward_messages/farming/melon/6
execute if score @s C_MelonL matches 6 run function collections:reward_messages/farming/melon/7
execute if score @s C_MelonL matches 7 run function collections:reward_messages/farming/melon/8
execute if score @s C_MelonL matches 8 run function collections:reward_messages/farming/melon/9
scoreboard players add @s C_MelonL 1
scoreboard players add @s C_MelonNL 1
execute if score @s C_Melon >= @s C_MelonN unless score @s C_MelonL matches 9.. run function collections:update_collections/farming/melon/levelup
#------------------------------------------#