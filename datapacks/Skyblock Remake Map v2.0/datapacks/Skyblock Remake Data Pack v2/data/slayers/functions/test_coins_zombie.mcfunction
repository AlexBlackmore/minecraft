#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------COSTS-------------------#
execute if entity @p[team=aqua] run scoreboard players operation $PlayerCoins Temp = aqua Coins
execute if entity @p[team=black] run scoreboard players operation $PlayerCoins Temp = black Coins
execute if entity @p[team=blue] run scoreboard players operation $PlayerCoins Temp = blue Coins
execute if entity @p[team=dark_aqua] run scoreboard players operation $PlayerCoins Temp = dark_aqua Coins
execute if entity @p[team=dark_blue] run scoreboard players operation $PlayerCoins Temp = dark_blue Coins
execute if entity @p[team=dark_gray] run scoreboard players operation $PlayerCoins Temp = dark_gray Coins
execute if entity @p[team=dark_green] run scoreboard players operation $PlayerCoins Temp = dark_green Coins
execute if entity @p[team=dark_purple] run scoreboard players operation $PlayerCoins Temp = dark_purple Coins
execute if entity @p[team=dark_red] run scoreboard players operation $PlayerCoins Temp = dark_red Coins
execute if entity @p[team=gold] run scoreboard players operation $PlayerCoins Temp = gold Coins
execute if entity @p[team=gray] run scoreboard players operation $PlayerCoins Temp = gray Coins
execute if entity @p[team=green] run scoreboard players operation $PlayerCoins Temp = green Coins
execute if entity @p[team=light_purple] run scoreboard players operation $PlayerCoins Temp = light_purple Coins
execute if entity @p[team=red] run scoreboard players operation $PlayerCoins Temp = red Coins
execute if entity @p[team=white] run scoreboard players operation $PlayerCoins Temp = white Coins
execute if entity @p[team=yellow] run scoreboard players operation $PlayerCoins Temp = yellow Coins

execute if score $PlayerCoins Temp >= Tier1Cost S_ZInfos run scoreboard players set $Tier1Test Temp 1
execute unless score $PlayerCoins Temp >= Tier1Cost S_ZInfos run scoreboard players set $Tier1Test Temp 0

execute if score $PlayerCoins Temp >= Tier2Cost S_ZInfos run scoreboard players set $Tier2Test Temp 1
execute unless score $PlayerCoins Temp >= Tier2Cost S_ZInfos run scoreboard players set $Tier2Test Temp 0

execute if score $PlayerCoins Temp >= Tier3Cost S_ZInfos run scoreboard players set $Tier3Test Temp 1
execute unless score $PlayerCoins Temp >= Tier3Cost S_ZInfos run scoreboard players set $Tier3Test Temp 0

execute if score $PlayerCoins Temp >= Tier4Cost S_ZInfos run scoreboard players set $Tier4Test Temp 1
execute unless score $PlayerCoins Temp >= Tier4Cost S_ZInfos run scoreboard players set $Tier4Test Temp 0