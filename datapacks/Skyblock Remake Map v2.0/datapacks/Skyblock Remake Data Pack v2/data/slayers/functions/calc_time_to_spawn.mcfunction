#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players operation Seconds S_TimeToSpawn = @s S_TimeToSpawn
scoreboard players set Minutes S_TimeToSpawn 0

scoreboard players operation Seconds S_TimeToSpawn /= c20 Constant

execute if score Seconds S_TimeToSpawn matches 59.. run function slayers:timer/time_to_spawn/secs_to_mins

