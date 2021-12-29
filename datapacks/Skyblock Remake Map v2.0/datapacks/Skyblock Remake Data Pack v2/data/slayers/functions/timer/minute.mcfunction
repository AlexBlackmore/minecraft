#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players remove @s I_SlayerTimeMin 1
scoreboard players set @s I_SlayerTimeSec 60
scoreboard players set @s I_SlayerTime 20
execute as @e[tag=SlayerTimeDisplay] at @s run function slayers:timer/display/update
