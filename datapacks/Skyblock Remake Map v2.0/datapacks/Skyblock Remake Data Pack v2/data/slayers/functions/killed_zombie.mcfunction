#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
tag @s add killedzombie
advancement revoke @s only slayers:killzombie
advancement revoke @s only slayers:killzombievillager
schedule function slayers:killed_zombie2 1t
