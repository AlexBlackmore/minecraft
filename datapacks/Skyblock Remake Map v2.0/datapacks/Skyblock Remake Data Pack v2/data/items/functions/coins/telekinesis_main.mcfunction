#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
execute store result score @s AddCoins run data get entity @e[type=item,nbt={Age:0s,Item:{tag:{TempCoin:1b}}},sort=nearest,limit=1] Item.tag.BaseCoins
scoreboard players operation $EnchantLevel Temp *= $DisplayLevel Temp
scoreboard players operation $EnchantLevel Temp /= c10 Constant
scoreboard players operation @s AddCoins += $EnchantLevel Temp
kill @e[type=item,nbt={Age:0s,Item:{tag:{TempCoin:1b}}},sort=nearest,limit=1]
#------------------------------------------#