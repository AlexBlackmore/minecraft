#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COMPASS MENU---------------#
scoreboard players remove @s MenuSpawnDelay 1
execute if entity @s[scores={MenuSpawnDelay=0}] at @s run function menu:summon_menu
scoreboard players reset @s[scores={MenuSpawnDelay=0}] MenuSpawnDelay
#------------------------------------------#