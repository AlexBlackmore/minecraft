scoreboard players operation @s[team=aqua] Coins = aqua Coins
scoreboard players operation @s[team=black] Coins = black Coins
scoreboard players operation @s[team=blue] Coins = blue Coins
scoreboard players operation @s[team=dark_aqua] Coins = dark_aqua Coins
scoreboard players operation @s[team=dark_blue] Coins = dark_blue Coins
scoreboard players operation @s[team=dark_gray] Coins = dark_gray Coins
scoreboard players operation @s[team=dark_green] Coins = dark_green Coins
scoreboard players operation @s[team=dark_purple] Coins = dark_purple Coins
scoreboard players operation @s[team=dark_red] Coins = dark_red Coins
scoreboard players operation @s[team=gold] Coins = gold Coins
scoreboard players operation @s[team=gray] Coins = gray Coins
scoreboard players operation @s[team=green] Coins = green Coins
scoreboard players operation @s[team=light_purple] Coins = light_purple Coins
scoreboard players operation @s[team=red] Coins = red Coins
scoreboard players operation @s[team=white] Coins = white Coins
scoreboard players operation @s[team=yellow] Coins = yellow Coins
scoreboard players operation @s Coins += @s AddCoins
function profiling:sidebar_reload_money/reload
scoreboard players reset @s Coins
scoreboard players reset @s AddCoins