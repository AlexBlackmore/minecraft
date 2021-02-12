#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute if entity @s[team=aqua] run scoreboard players operation aqua Coins /= c2 Constant
execute if entity @s[team=black] run scoreboard players operation black Coins /= c2 Constant
execute if entity @s[team=blue] run scoreboard players operation blue Coins /= c2 Constant
execute if entity @s[team=dark_aqua] run scoreboard players operation dark_aqua Coins /= c2 Constant
execute if entity @s[team=dark_blue] run scoreboard players operation dark_blue Coins /= c2 Constant
execute if entity @s[team=dark_gray] run scoreboard players operation dark_gray Coins /= c2 Constant
execute if entity @s[team=dark_green] run scoreboard players operation dark_green Coins /= c2 Constant
execute if entity @s[team=dark_purple] run scoreboard players operation dark_purple Coins /= c2 Constant
execute if entity @s[team=dark_red] run scoreboard players operation dark_red Coins /= c2 Constant
execute if entity @s[team=gold] run scoreboard players operation gold Coins /= c2 Constant
execute if entity @s[team=gray] run scoreboard players operation gray Coins /= c2 Constant
execute if entity @s[team=green] run scoreboard players operation green Coins /= c2 Constant
execute if entity @s[team=light_purple] run scoreboard players operation light_purple Coins /= c2 Constant
execute if entity @s[team=red] run scoreboard players operation red Coins /= c2 Constant
execute if entity @s[team=white] run scoreboard players operation white Coins /= c2 Constant
execute if entity @s[team=yellow] run scoreboard players operation yellow Coins /= c2 Constant

execute if entity @s[team=aqua] run scoreboard players operation @s Coins = aqua Coins
execute if entity @s[team=black] run scoreboard players operation @s Coins = black Coins
execute if entity @s[team=blue] run scoreboard players operation @s Coins = blue Coins
execute if entity @s[team=dark_aqua] run scoreboard players operation @s Coins = dark_aqua Coins
execute if entity @s[team=dark_blue] run scoreboard players operation @s Coins = dark_blue Coins
execute if entity @s[team=dark_gray] run scoreboard players operation @s Coins = dark_gray Coins
execute if entity @s[team=dark_green] run scoreboard players operation @s Coins = dark_green Coins
execute if entity @s[team=dark_purple] run scoreboard players operation @s Coins = dark_purple Coins
execute if entity @s[team=dark_red] run scoreboard players operation @s Coins = dark_red Coins
execute if entity @s[team=gold] run scoreboard players operation @s Coins = gold Coins
execute if entity @s[team=gray] run scoreboard players operation @s Coins = gray Coins
execute if entity @s[team=green] run scoreboard players operation @s Coins = green Coins
execute if entity @s[team=light_purple] run scoreboard players operation @s Coins = light_purple Coins
execute if entity @s[team=red] run scoreboard players operation @s Coins = red Coins
execute if entity @s[team=white] run scoreboard players operation @s Coins = white Coins
execute if entity @s[team=yellow] run scoreboard players operation @s Coins = yellow Coins

execute if score @s Coins matches 0..999 run function profiling:sidebar_reload_money/0-999
execute if score @s Coins matches 1000..999999 run function profiling:sidebar_reload_money/0k-999k
execute if score @s Coins matches 1000000.. run function profiling:sidebar_reload_money/0m-99m

scoreboard players reset @s Coins
#------------------------------------------#