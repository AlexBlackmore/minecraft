#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
scoreboard players add @s P_MagicFind 100
scoreboard players operation @s DropChance *= @s P_MagicFind
scoreboard players operation @s DropChance /= c100 Constant
scoreboard players remove @s P_MagicFind 100

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 1000000
function skyblock:random/range_lcg
#------------------------------------------#