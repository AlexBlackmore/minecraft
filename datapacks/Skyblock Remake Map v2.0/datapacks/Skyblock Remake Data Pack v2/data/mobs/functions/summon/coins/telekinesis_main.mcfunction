#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
execute store result score @s AddCoins run data get entity @e[type=item,nbt={Age:0s,Item:{tag:{TempCoin:1b}}},sort=nearest,limit=1] Item.tag.BaseCoins
scoreboard players operation @s S_Temp *= @s S_Temp2
scoreboard players operation @s S_Temp /= c10 Constant
scoreboard players operation @s AddCoins += @s S_Temp
kill @e[type=item,nbt={Age:0s,Item:{tag:{TempCoin:1b}}},sort=nearest,limit=1]
#------------------------------------------#