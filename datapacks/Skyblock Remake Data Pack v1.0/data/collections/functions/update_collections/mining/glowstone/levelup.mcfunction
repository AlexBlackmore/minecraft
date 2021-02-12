#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_GlowstoneL matches -1 run function collections:reward_messages/mining/glowstone/0
execute if score @s C_GlowstoneL matches 0 run function collections:reward_messages/mining/glowstone/1
execute if score @s C_GlowstoneL matches 1 run function collections:reward_messages/mining/glowstone/2
execute if score @s C_GlowstoneL matches 2 run function collections:reward_messages/mining/glowstone/3
execute if score @s C_GlowstoneL matches 3 run function collections:reward_messages/mining/glowstone/4
execute if score @s C_GlowstoneL matches 4 run function collections:reward_messages/mining/glowstone/5
execute if score @s C_GlowstoneL matches 5 run function collections:reward_messages/mining/glowstone/6
execute if score @s C_GlowstoneL matches 6 run function collections:reward_messages/mining/glowstone/7
execute if score @s C_GlowstoneL matches 7 run function collections:reward_messages/mining/glowstone/8
execute if score @s C_GlowstoneL matches 8 run function collections:reward_messages/mining/glowstone/9
scoreboard players add @s C_GlowstoneL 1
scoreboard players add @s C_GlowstoneNL 1
execute if score @s C_Glowstone >= @s C_GlowstoneN unless score @s C_GlowstoneL matches 9.. run function collections:update_collections/mining/glowstone/levelup
#------------------------------------------#