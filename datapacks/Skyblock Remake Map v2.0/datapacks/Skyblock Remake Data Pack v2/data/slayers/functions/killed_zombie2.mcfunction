#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
execute as @a[tag=killedzombie] if score @s S_CQuestType matches 1 run function slayers:events/zombie_killed
tag @a remove killedzombie

