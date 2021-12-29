#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
execute as @a[tag=killedwolf] if score @s S_CQuestType matches 3 run function slayers:events/wolf_killed
tag @a remove killedwolf


