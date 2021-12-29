#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Time SkyblockModules matches 0.. run scoreboard players set Time SkyblockModules 1

scoreboard objectives add Date dummy
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Time Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#