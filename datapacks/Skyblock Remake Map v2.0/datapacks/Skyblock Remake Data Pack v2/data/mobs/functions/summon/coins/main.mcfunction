#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
#get coins dropped from temp item
execute store result score @s CoinDrop run data get entity @s Item.tag.BaseCoins
scoreboard players operation @p[tag=TargetEntity] S_Temp *= @p[tag=TargetEntity] S_Temp2
scoreboard players operation @p[tag=TargetEntity] S_Temp /= c10 Constant
scoreboard players operation @s CoinDrop += @p[tag=TargetEntity] S_Temp

#diamond coins
execute if entity @s[scores={CoinDrop=50..}] run function mobs:summon/coins/50
#gold coins
execute if entity @s[scores={CoinDrop=10..}] run function mobs:summon/coins/10
#iron coins
execute if entity @s[scores={CoinDrop=1..}] run function mobs:summon/coins/1
#kill temp item
kill @s
#------------------------------------------#