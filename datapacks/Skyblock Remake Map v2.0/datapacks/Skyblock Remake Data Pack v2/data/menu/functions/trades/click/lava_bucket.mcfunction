#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute if score aqua Coins matches ..19 at @p[team=aqua] run function menu:trades/fail_nomoney
execute if score black Coins matches ..19 at @p[team=black] run function menu:trades/fail_nomoney
execute if score blue Coins matches ..19 at @p[team=blue] run function menu:trades/fail_nomoney
execute if score dark_aqua Coins matches ..19 at @p[team=dark_aqua] run function menu:trades/fail_nomoney
execute if score dark_blue Coins matches ..19 at @p[team=dark_blue] run function menu:trades/fail_nomoney
execute if score dark_gray Coins matches ..19 at @p[team=dark_gray] run function menu:trades/fail_nomoney
execute if score dark_green Coins matches ..19 at @p[team=dark_green] run function menu:trades/fail_nomoney
execute if score dark_purple Coins matches ..19 at @p[team=dark_purple] run function menu:trades/fail_nomoney
execute if score aqudark_reda Coins matches ..19 at @p[team=dark_red] run function menu:trades/fail_nomoney
execute if score gold Coins matches ..19 at @p[team=gold] run function menu:trades/fail_nomoney
execute if score gray Coins matches ..19 at @p[team=gray] run function menu:trades/fail_nomoney
execute if score green Coins matches ..19 at @p[team=green] run function menu:trades/fail_nomoney
execute if score light_purple Coins matches ..19 at @p[team=light_purple] run function menu:trades/fail_nomoney
execute if score red Coins matches ..19 at @p[team=red] run function menu:trades/fail_nomoney
execute if score white Coins matches ..19 at @p[team=white] run function menu:trades/fail_nomoney
execute if score yellow Coins matches ..19 at @p[team=yellow] run function menu:trades/fail_nomoney

execute if entity @p[team=aqua] if score aqua Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=black] if score black Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=blue] if score blue Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=dark_aqua] if score dark_aqua Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=dark_blue] if score dark_blue Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=dark_gray] if score dark_gray Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=dark_green] if score dark_green Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=dark_purple] if score dark_purple Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=dark_red] if score dark_red Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=gold] if score gold Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=gray] if score gray Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=green] if score green Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=light_purple] if score light_purple Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=red] if score red Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=white] if score white Coins matches 20.. run function menu:trades/items/lava_bucket
execute if entity @p[team=yellow] if score yellow Coins matches 20.. run function menu:trades/items/lava_bucket
#------------------------------------------#