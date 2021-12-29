#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Glowstone += @p C_Glowstone
execute if score @s C_Glowstone >= @s C_GlowstoneN unless score @s C_GlowstoneL matches 9.. run function collections:update_collections/mining/glowstone/levelup
scoreboard players reset @p C_Glowstone
#------------------------------------------#