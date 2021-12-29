#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Mithril += @p C_Mithril
execute if score @s C_Mithril >= @s C_MithrilN unless score @s C_MithrilL matches 9.. run function collections:update_collections/mining/mithril/levelup
scoreboard players reset @p C_Mithril
#------------------------------------------#