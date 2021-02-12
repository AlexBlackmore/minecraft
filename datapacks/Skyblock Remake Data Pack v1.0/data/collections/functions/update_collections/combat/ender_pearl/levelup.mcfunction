#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_EnderpearlL matches -1 run function collections:reward_messages/combat/ender_pearl/0
execute if score @s C_EnderpearlL matches 0 run function collections:reward_messages/combat/ender_pearl/1
execute if score @s C_EnderpearlL matches 1 run function collections:reward_messages/combat/ender_pearl/2
execute if score @s C_EnderpearlL matches 2 run function collections:reward_messages/combat/ender_pearl/3
execute if score @s C_EnderpearlL matches 3 run function collections:reward_messages/combat/ender_pearl/4
execute if score @s C_EnderpearlL matches 4 run function collections:reward_messages/combat/ender_pearl/5
execute if score @s C_EnderpearlL matches 5 run function collections:reward_messages/combat/ender_pearl/6
execute if score @s C_EnderpearlL matches 6 run function collections:reward_messages/combat/ender_pearl/7
execute if score @s C_EnderpearlL matches 7 run function collections:reward_messages/combat/ender_pearl/8
execute if score @s C_EnderpearlL matches 8 run function collections:reward_messages/combat/ender_pearl/9
scoreboard players add @s C_EnderpearlL 1
scoreboard players add @s C_EnderpearlNL 1
execute if score @s C_Enderpearl >= @s C_EnderpearlN unless score @s C_EnderpearlL matches 9.. run function collections:update_collections/combat/ender_pearl/levelup
#------------------------------------------#