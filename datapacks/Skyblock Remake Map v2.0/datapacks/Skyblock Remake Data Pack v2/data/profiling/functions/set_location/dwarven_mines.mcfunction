#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------REMOVE MENU----------------#
execute if entity @s[team=aqua] run team modify loc_dark_green suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=black] run team modify loc_black suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=blue] run team modify loc_blue suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=dark_aqua] run team modify loc_dark_dark_green suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=dark_blue] run team modify loc_dark_blue suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=dark_gray] run team modify loc_dark_gray suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=dark_green] run team modify loc_dark_green suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=dark_purple] run team modify loc_dark_purp suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=dark_red] run team modify loc_dark_red suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=gold] run team modify loc_gold suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=gray] run team modify loc_gray suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=green] run team modify loc_green suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=light_purple] run team modify loc_light_purp suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=red] run team modify loc_red suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=white] run team modify loc_white suffix [{"text":" Dwarven Mines","color":"dark_green"}]
execute if entity @s[team=yellow] run team modify loc_yellow suffix [{"text":" Dwarven Mines","color":"dark_green"}]
scoreboard players set @s Location 9
scoreboard players set @s SubLocation 45
execute at @s at @s in skyblock:dwarven_mines run tp @s ~ ~ ~
execute at @s run spawnpoint @s -49 200 -122 -90
