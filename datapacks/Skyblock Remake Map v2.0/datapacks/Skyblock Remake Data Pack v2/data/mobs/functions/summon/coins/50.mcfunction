#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
#diamond coins
loot spawn ~ ~ ~ loot mobs:coin_items/50
scoreboard players operation @s Temp = @s CoinDrop
scoreboard players operation @s Temp /= c50 Constant
execute unless entity @s[scores={Temp=64..}] store result entity @e[type=item,tag=!Coin,nbt={Age:0s,Item:{tag:{PickupCoin:1b}}},sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s Temp
execute if entity @s[scores={Temp=64..}] run data modify entity @e[type=item,tag=!Coin,nbt={Age:0s,Item:{tag:{PickupCoin:1b}}},sort=nearest,limit=1] Item.Count set value 64b
scoreboard players operation @s Temp *= c50 Constant
execute unless entity @s[scores={Temp=3200..}] run scoreboard players operation @s CoinDrop -= @s Temp
execute if entity @s[scores={Temp=3200..}] run scoreboard players remove @s CoinDrop 3200
data merge entity @e[type=item,tag=!Coin,nbt={Age:0s,Item:{tag:{PickupCoin:1b}}},sort=nearest,limit=1] {Age:1s,Tags:["Coin"],PickupDelay:1000000}
execute if entity @s[scores={CoinDrop=50..}] run function mobs:summon/coins/50
#------------------------------------------#