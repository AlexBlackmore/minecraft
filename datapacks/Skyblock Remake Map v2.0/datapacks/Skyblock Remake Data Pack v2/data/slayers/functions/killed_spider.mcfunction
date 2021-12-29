#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
tag @s add killedspider
advancement revoke @s only slayers:killspider
schedule function slayers:killed_spider2 1t

