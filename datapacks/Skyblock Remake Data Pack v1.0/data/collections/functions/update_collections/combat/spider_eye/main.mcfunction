#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Spidereye += @p C_Spidereye
execute if score @s C_Spidereye >= @s C_SpidereyeN unless score @s C_SpidereyeL matches 9.. run function collections:update_collections/combat/spider_eye/levelup
scoreboard players reset @p C_Spidereye
#------------------------------------------#