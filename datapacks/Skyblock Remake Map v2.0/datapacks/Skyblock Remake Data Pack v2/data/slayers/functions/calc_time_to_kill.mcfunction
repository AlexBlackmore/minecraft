#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players operation Seconds S_TimeToKill = @s S_TimeToKill
scoreboard players set Minutes S_TimeToKill 0

scoreboard players operation Seconds S_TimeToKill /= c20 Constant

execute if score Seconds S_TimeToKill matches 59.. run function slayers:timer/time_to_kill/secs_to_mins