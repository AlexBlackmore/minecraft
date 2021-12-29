#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------------------------------#
# execute if entity @s[team=aqua] run scoreboard players set $TempTeam Temp 1
# execute if entity @s[team=red] run scoreboard players set $TempTeam Temp 2
# execute if entity @s[team=yellow] run scoreboard players set $TempTeam Temp 3
# execute if entity @s[team=gold] run scoreboard players set $TempTeam Temp 4
# execute if entity @s[team=green] run scoreboard players set $TempTeam Temp 5
# execute if entity @s[team=blue] run scoreboard players set $TempTeam Temp 6
# execute if entity @s[team=dark_purple] run scoreboard players set $TempTeam Temp 7
# execute if entity @s[team=dark_red] run scoreboard players set $TempTeam Temp 8
# execute if entity @s[team=dark_green] run scoreboard players set $TempTeam Temp 9
# execute if entity @s[team=dark_aqua] run scoreboard players set $TempTeam Temp 10
# execute if entity @s[team=dark_gray] run scoreboard players set $TempTeam Temp 11
# execute if entity @s[team=gray] run scoreboard players set $TempTeam Temp 12
# execute if entity @s[team=light_purple] run scoreboard players set $TempTeam Temp 13
# execute if entity @s[team=dark_blue] run scoreboard players set $TempTeam Temp 14
# execute if entity @s[team=white] run scoreboard players set $TempTeam Temp 15
# execute if entity @s[team=black] run scoreboard players set $TempTeam Temp 16

execute if score $TempTeam Temp matches 1 run team join aqua @s
execute if score $TempTeam Temp matches 2 run team join red @s
execute if score $TempTeam Temp matches 3 run team join yellow @s
execute if score $TempTeam Temp matches 4 run team join gold @s
execute if score $TempTeam Temp matches 5 run team join green @s
execute if score $TempTeam Temp matches 6 run team join blue @s
execute if score $TempTeam Temp matches 7 run team join dark_purple @s
execute if score $TempTeam Temp matches 8 run team join dark_red @s
execute if score $TempTeam Temp matches 9 run team join dark_green @s
execute if score $TempTeam Temp matches 10 run team join dark_aqua @s
execute if score $TempTeam Temp matches 11 run team join dark_gray @s
execute if score $TempTeam Temp matches 12 run team join gray @s
execute if score $TempTeam Temp matches 13 run team join light_purple @s
execute if score $TempTeam Temp matches 14 run team join dark_blue @s
execute if score $TempTeam Temp matches 15 run team join white @s
execute if score $TempTeam Temp matches 16 run team join black @s