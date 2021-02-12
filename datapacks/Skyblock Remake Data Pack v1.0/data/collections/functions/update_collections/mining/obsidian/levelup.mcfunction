#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if score @s C_ObsidianL matches -1 run function collections:reward_messages/mining/obsidian/0
execute if score @s C_ObsidianL matches 0 run function collections:reward_messages/mining/obsidian/1
execute if score @s C_ObsidianL matches 1 run function collections:reward_messages/mining/obsidian/2
execute if score @s C_ObsidianL matches 2 run function collections:reward_messages/mining/obsidian/3
execute if score @s C_ObsidianL matches 3 run function collections:reward_messages/mining/obsidian/4
execute if score @s C_ObsidianL matches 4 run function collections:reward_messages/mining/obsidian/5
execute if score @s C_ObsidianL matches 5 run function collections:reward_messages/mining/obsidian/6
execute if score @s C_ObsidianL matches 6 run function collections:reward_messages/mining/obsidian/7
execute if score @s C_ObsidianL matches 7 run function collections:reward_messages/mining/obsidian/8
execute if score @s C_ObsidianL matches 8 run function collections:reward_messages/mining/obsidian/9
scoreboard players add @s C_ObsidianL 1
scoreboard players add @s C_ObsidianNL 1
execute if score @s C_Obsidian >= @s C_ObsidianN unless score @s C_ObsidianL matches 9.. run function collections:update_collections/mining/obsidian/levelup
#------------------------------------------#