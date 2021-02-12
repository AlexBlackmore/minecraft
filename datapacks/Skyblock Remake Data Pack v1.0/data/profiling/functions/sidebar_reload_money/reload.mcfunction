scoreboard players operation aqua Coins = @s[team=aqua] Coins
scoreboard players operation black Coins = @s[team=black] Coins
scoreboard players operation blue Coins = @s[team=blue] Coins
scoreboard players operation dark_aqua Coins = @s[team=dark_aqua] Coins
scoreboard players operation dark_blue Coins = @s[team=dark_blue] Coins
scoreboard players operation dark_gray Coins = @s[team=dark_gray] Coins
scoreboard players operation dark_green Coins = @s[team=dark_green] Coins
scoreboard players operation dark_purple Coins = @s[team=dark_purple] Coins
scoreboard players operation dark_red Coins = @s[team=dark_red] Coins
scoreboard players operation gold Coins = @s[team=gold] Coins
scoreboard players operation gray Coins = @s[team=gray] Coins
scoreboard players operation green Coins = @s[team=green] Coins
scoreboard players operation light_purple Coins = @s[team=light_purple] Coins
scoreboard players operation red Coins = @s[team=red] Coins
scoreboard players operation white Coins = @s[team=white] Coins
scoreboard players operation yellow Coins = @s[team=yellow] Coins
execute if score @s Coins matches 0..999 run function profiling:sidebar_reload_money/0-999
execute if score @s Coins matches 1000..999999 run function profiling:sidebar_reload_money/0k-999k
execute if score @s Coins matches 1000000.. run function profiling:sidebar_reload_money/0m-99m
scoreboard players reset @s Coins