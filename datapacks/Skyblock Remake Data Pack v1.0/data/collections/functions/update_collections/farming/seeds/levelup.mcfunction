#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SeedsL matches -1 run function collections:reward_messages/farming/seeds/0
execute if score @s C_SeedsL matches 0 run function collections:reward_messages/farming/seeds/1
execute if score @s C_SeedsL matches 1 run function collections:reward_messages/farming/seeds/2
execute if score @s C_SeedsL matches 2 run function collections:reward_messages/farming/seeds/3
execute if score @s C_SeedsL matches 3 run function collections:reward_messages/farming/seeds/4
execute if score @s C_SeedsL matches 4 run function collections:reward_messages/farming/seeds/5
execute if score @s C_SeedsL matches 5 run function collections:reward_messages/farming/seeds/6
scoreboard players add @s C_SeedsL 1
scoreboard players add @s C_SeedsNL 1
execute if score @s C_Seeds >= @s C_SeedsN unless score @s C_SeedsL matches 6.. run function collections:update_collections/farming/seeds/levelup
#------------------------------------------#