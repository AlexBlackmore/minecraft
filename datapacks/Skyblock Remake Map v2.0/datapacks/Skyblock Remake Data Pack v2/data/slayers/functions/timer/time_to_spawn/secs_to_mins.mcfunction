#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players remove Seconds S_TimeToSpawn 60
scoreboard players add Minutes S_TimeToSpawn 1
execute if score Seconds S_TimeToSpawn matches 59.. run function slayers:timer/time_to_spawn/secs_to_mins
