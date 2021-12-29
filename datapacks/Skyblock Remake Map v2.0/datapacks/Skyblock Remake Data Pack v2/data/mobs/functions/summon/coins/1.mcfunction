#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SUMMON COMMAND---------------#
#iron coins
loot spawn ~ ~ ~ loot mobs:coin_items/1
execute store result entity @e[type=item,tag=!Coin,nbt={Age:0s,Item:{tag:{PickupCoin:1b}}},sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s CoinDrop
data merge entity @e[type=item,tag=!Coin,nbt={Age:0s,Item:{tag:{PickupCoin:1b}}},sort=nearest,limit=1] {Tags:["Coin"],PickupDelay:1000000}
#------------------------------------------#