#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players remove Seconds S_TimeToKill 60
scoreboard players add Minutes S_TimeToKill 1
execute if score Seconds S_TimeToKill matches 59.. run function slayers:timer/time_to_kill/secs_to_mins
