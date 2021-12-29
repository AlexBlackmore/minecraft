#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------CALC STAT-----------------#
execute as @e[type=item,nbt={Item:{tag:{PickupCoin:1b,PickupCoinType:"Iron"}}},distance=..1.7] store result score @s Temp run data get entity @s Item.Count
scoreboard players operation @s AddCoins += @e[type=item,nbt={Item:{tag:{PickupCoin:1b,PickupCoinType:"Iron"}}},distance=..1.7] Temp

execute as @e[type=item,nbt={Item:{tag:{PickupCoin:1b,PickupCoinType:"Gold"}}},distance=..1.7] store result score @s Temp run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{tag:{PickupCoin:1b,PickupCoinType:"Gold"}}},distance=..1.7] run scoreboard players operation @s Temp *= c10 Constant
scoreboard players operation @s AddCoins += @e[type=item,nbt={Item:{tag:{PickupCoin:1b,PickupCoinType:"Gold"}}},distance=..1.7] Temp

execute as @e[type=item,nbt={Item:{tag:{PickupCoin:1b,PickupCoinType:"Diamond"}}},distance=..1.7] store result score @s Temp run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{tag:{PickupCoin:1b,PickupCoinType:"Diamond"}}},distance=..1.7] run scoreboard players operation @s Temp *= c50 Constant
scoreboard players operation @s AddCoins += @e[type=item,nbt={Item:{tag:{PickupCoin:1b,PickupCoinType:"Diamond"}}},distance=..1.7] Temp
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5 1
kill @e[type=item,nbt={Item:{tag:{PickupCoin:1b}}},distance=..1.7]
#------------------------------------------#