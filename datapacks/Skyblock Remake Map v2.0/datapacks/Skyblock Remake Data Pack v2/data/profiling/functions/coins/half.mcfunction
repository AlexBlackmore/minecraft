#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute if entity @s[team=aqua] run scoreboard players operation @s AddCoins = aqua Coins
execute if entity @s[team=black] run scoreboard players operation @s AddCoins = black Coins
execute if entity @s[team=blue] run scoreboard players operation @s AddCoins = blue Coins
execute if entity @s[team=dark_aqua] run scoreboard players operation @s AddCoins = dark_aqua Coins
execute if entity @s[team=dark_blue] run scoreboard players operation @s AddCoins = dark_blue Coins
execute if entity @s[team=dark_gray] run scoreboard players operation @s AddCoins = dark_gray Coins
execute if entity @s[team=dark_green] run scoreboard players operation @s AddCoins = dark_green Coins
execute if entity @s[team=dark_purple] run scoreboard players operation @s AddCoins = dark_purple Coins
execute if entity @s[team=dark_red] run scoreboard players operation @s AddCoins = dark_red Coins
execute if entity @s[team=gold] run scoreboard players operation @s AddCoins = gold Coins
execute if entity @s[team=gray] run scoreboard players operation @s AddCoins = gray Coins
execute if entity @s[team=green] run scoreboard players operation @s AddCoins = green Coins
execute if entity @s[team=light_purple] run scoreboard players operation @s AddCoins = light_purple Coins
execute if entity @s[team=red] run scoreboard players operation @s AddCoins = red Coins
execute if entity @s[team=white] run scoreboard players operation @s AddCoins = white Coins
execute if entity @s[team=yellow] run scoreboard players operation @s AddCoins = yellow Coins

scoreboard players operation @s AddCoins /= c2 Constant
scoreboard players operation @s AddCoins *= c-1 Constant
#------------------------------------------#