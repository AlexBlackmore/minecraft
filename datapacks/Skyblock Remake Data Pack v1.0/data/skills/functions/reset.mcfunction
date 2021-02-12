#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Skills SkyblockModules matches 0.. run scoreboard players set Skills SkyblockModules 1

scoreboard objectives add S_Farming dummy
scoreboard objectives add S_Mining dummy
scoreboard objectives add S_Combat dummy
scoreboard objectives add S_Foraging dummy
scoreboard objectives add S_Fishing dummy
scoreboard objectives add S_Enchanting dummy
scoreboard objectives add S_Alchemy dummy
scoreboard objectives add S_Carpentry dummy
scoreboard objectives add S_Runecrafting dummy
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Skills Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#