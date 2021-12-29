#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players operation $Minutes S_SinceStart = @s S_SinceStart
scoreboard players operation $Minutes S_SinceStart /= c20 Constant
scoreboard players operation $Minutes S_SinceStart /= c60 Constant

