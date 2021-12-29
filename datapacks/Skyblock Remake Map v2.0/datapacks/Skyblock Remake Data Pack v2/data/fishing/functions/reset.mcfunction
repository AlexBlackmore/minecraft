#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Fishing SkyblockModules matches 0.. run scoreboard players set Fishing SkyblockModules 1

scoreboard objectives add RodTimeout dummy
scoreboard objectives add F_KeepBaitChan dummy
scoreboard objectives add F_TreasureC dummy
scoreboard objectives add F_BaseTreasureC dummy
scoreboard objectives add F_BonusTreasureC dummy
scoreboard objectives add E_SpikedHook dummy
scoreboard objectives add Catch minecraft.custom:minecraft.fish_caught
scoreboard objectives add ShotRod minecraft.used:minecraft.fishing_rod

#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Fishing Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#