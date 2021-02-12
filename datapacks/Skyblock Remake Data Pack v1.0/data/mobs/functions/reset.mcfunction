#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Mobs SkyblockModules matches 0.. run scoreboard players set Mobs SkyblockModules 1

scoreboard objectives add DropChance dummy

scoreboard objectives add BoneTimer dummy
scoreboard objectives add LapisLaserTimer dummy
scoreboard objectives add WeaverTimer dummy
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Mobs Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#