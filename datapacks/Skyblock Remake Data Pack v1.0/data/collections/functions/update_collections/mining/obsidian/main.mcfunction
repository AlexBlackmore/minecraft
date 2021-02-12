#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Obsidian += @p C_Obsidian
execute if score @s C_Obsidian >= @s C_ObsidianN unless score @s C_ObsidianL matches 9.. run function collections:update_collections/mining/obsidian/levelup
scoreboard players reset @p C_Obsidian
#------------------------------------------#