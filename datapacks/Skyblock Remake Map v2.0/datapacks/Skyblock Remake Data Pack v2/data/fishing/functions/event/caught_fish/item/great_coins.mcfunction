#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ITEM RANDOMIZER--------------#
scoreboard players set in RandMath 17702
scoreboard players set in1 RandMath 18224
function skyblock:random/range_lcg
#---------------COIN GIVER-----------------#
kill @e[type=item,nbt={Age:0s}]
scoreboard players operation @s AddCoins += out RandMath
tellraw @s ["",{"text":"GREAT CATCH! ","bold":true,"color":"dark_purple"},{"text":"You found ","color":"aqua"},{"score":{"name":"@s ","objective":"AddCoins"},"color":"gold"},{"text":" Coins.","color":"gold"}]
scoreboard players set out RandMath 0
#------------------------------------------#