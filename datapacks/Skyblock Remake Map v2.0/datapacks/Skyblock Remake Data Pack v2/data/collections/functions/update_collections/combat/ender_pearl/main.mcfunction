#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Enderpearl += @p C_Enderpearl
execute if score @s C_Enderpearl >= @s C_EnderpearlN unless score @s C_EnderpearlL matches 9.. run function collections:update_collections/combat/ender_pearl/levelup
scoreboard players reset @p C_Enderpearl
#------------------------------------------#