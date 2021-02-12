#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_SpongeL matches -1 run function collections:reward_messages/fishing/sponge/0
execute if score @s C_SpongeL matches 0 run function collections:reward_messages/fishing/sponge/1
execute if score @s C_SpongeL matches 1 run function collections:reward_messages/fishing/sponge/2
execute if score @s C_SpongeL matches 2 run function collections:reward_messages/fishing/sponge/3
execute if score @s C_SpongeL matches 3 run function collections:reward_messages/fishing/sponge/4
execute if score @s C_SpongeL matches 4 run function collections:reward_messages/fishing/sponge/5
execute if score @s C_SpongeL matches 5 run function collections:reward_messages/fishing/sponge/6
execute if score @s C_SpongeL matches 6 run function collections:reward_messages/fishing/sponge/7
execute if score @s C_SpongeL matches 7 run function collections:reward_messages/fishing/sponge/8
execute if score @s C_SpongeL matches 8 run function collections:reward_messages/fishing/sponge/9
scoreboard players add @s C_SpongeL 1
scoreboard players add @s C_SpongeNL 1
execute if score @s C_Sponge >= @s C_SpongeN unless score @s C_SpongeL matches 9.. run function collections:update_collections/fishing/sponge/levelup
#------------------------------------------#