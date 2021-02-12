#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Armor SkyblockModules matches 0.. run scoreboard players set Armor SkyblockModules 1

#Block Helmets
scoreboard objectives add BlockHelmetSwap dummy
scoreboard objectives add BlockHelmetSwap2 dummy

#Armor Abilities
scoreboard objectives add I_LightLevel dummy
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Armor Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#