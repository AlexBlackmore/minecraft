#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SCOREBOARD STATS-------------#
execute if entity @s[team=aqua] run scoreboard players reset §a bar_aqua
execute if entity @s[team=black] run scoreboard players reset §a bar_black
execute if entity @s[team=blue] run scoreboard players reset §a bar_blue
execute if entity @s[team=dark_aqua] run scoreboard players reset §a bar_dark_aqua
execute if entity @s[team=dark_blue] run scoreboard players reset §a bar_dark_blue
execute if entity @s[team=dark_gray] run scoreboard players reset §a bar_dark_gray
execute if entity @s[team=dark_green] run scoreboard players reset §a bar_dark_green
execute if entity @s[team=dark_purple] run scoreboard players reset §a bar_dark_purple
execute if entity @s[team=dark_red] run scoreboard players reset §a bar_dark_red
execute if entity @s[team=gold] run scoreboard players reset §a bar_gold
execute if entity @s[team=gray] run scoreboard players reset §a bar_gray
execute if entity @s[team=green] run scoreboard players reset §a bar_green
execute if entity @s[team=light_purple] run scoreboard players reset §a bar_light_purple
execute if entity @s[team=red] run scoreboard players reset §a bar_red
execute if entity @s[team=white] run scoreboard players reset §a bar_white
execute if entity @s[team=yellow] run scoreboard players reset §a bar_yellow

execute if entity @s[team=aqua] run scoreboard players reset HP: bar_aqua
execute if entity @s[team=black] run scoreboard players reset HP: bar_black
execute if entity @s[team=blue] run scoreboard players reset HP: bar_blue
execute if entity @s[team=dark_aqua] run scoreboard players reset HP: bar_dark_aqua
execute if entity @s[team=dark_blue] run scoreboard players reset HP: bar_dark_blue
execute if entity @s[team=dark_gray] run scoreboard players reset HP: bar_dark_gray
execute if entity @s[team=dark_green] run scoreboard players reset HP: bar_dark_green
execute if entity @s[team=dark_purple] run scoreboard players reset HP: bar_dark_purple
execute if entity @s[team=dark_red] run scoreboard players reset HP: bar_dark_red
execute if entity @s[team=gold] run scoreboard players reset HP: bar_gold
execute if entity @s[team=gray] run scoreboard players reset HP: bar_gray
execute if entity @s[team=green] run scoreboard players reset HP: bar_green
execute if entity @s[team=light_purple] run scoreboard players reset HP: bar_light_purple
execute if entity @s[team=red] run scoreboard players reset HP: bar_red
execute if entity @s[team=white] run scoreboard players reset HP: bar_white
execute if entity @s[team=yellow] run scoreboard players reset HP: bar_yellow

execute if entity @s[team=aqua] run scoreboard players reset §fDamage: bar_aqua
execute if entity @s[team=black] run scoreboard players reset §§§fDamage: bar_black
execute if entity @s[team=blue] run scoreboard players reset §§§§§fDamage: bar_blue
execute if entity @s[team=dark_aqua] run scoreboard players reset §§§§§§§fDamage: bar_dark_aqua
execute if entity @s[team=dark_blue] run scoreboard players reset §§§§§§§§§fDamage: bar_dark_blue
execute if entity @s[team=dark_gray] run scoreboard players reset §§§§§§§§§§§fDamage: bar_dark_gray
execute if entity @s[team=dark_green] run scoreboard players reset §§§§§§§§§§§§§fDamage: bar_dark_green
execute if entity @s[team=dark_purple] run scoreboard players reset §§§§§§§§§§§§§§§fDamage: bar_dark_purple
execute if entity @s[team=dark_red] run scoreboard players reset §§§§§§§§§§§§§§§§§fDamage: bar_dark_red
execute if entity @s[team=gold] run scoreboard players reset §§§§§§§§§§§§§§§§§§§fDamage: bar_gold
execute if entity @s[team=gray] run scoreboard players reset §§§§§§§§§§§§§§§§§§§§§fDamage: bar_gray
execute if entity @s[team=green] run scoreboard players reset §§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_green
execute if entity @s[team=light_purple] run scoreboard players reset §§§§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_light_purple
execute if entity @s[team=red] run scoreboard players reset §§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_red
execute if entity @s[team=white] run scoreboard players reset §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_white
execute if entity @s[team=yellow] run scoreboard players reset §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_yellow

execute if entity @s[team=aqua] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_aqua 3
execute if entity @s[team=black] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_black 3
execute if entity @s[team=blue] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_blue 3
execute if entity @s[team=dark_aqua] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_dark_aqua 3
execute if entity @s[team=dark_blue] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_dark_blue 3 
execute if entity @s[team=dark_gray] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_dark_gray 3
execute if entity @s[team=dark_green] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_dark_green 3
execute if entity @s[team=dark_purple] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_dark_purple 3
execute if entity @s[team=dark_red] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_dark_red 3
execute if entity @s[team=gold] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_gold 3
execute if entity @s[team=gray] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_gray 3
execute if entity @s[team=green] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_green 3
execute if entity @s[team=light_purple] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_light_purple 3
execute if entity @s[team=red] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_red 3
execute if entity @s[team=white] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_white 3
execute if entity @s[team=yellow] if score @s S_CQuestType matches 1.. run scoreboard players add §s bar_yellow 3

execute if entity @s[team=aqua] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_aqua 3
execute if entity @s[team=black] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_black 3
execute if entity @s[team=blue] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_blue 3
execute if entity @s[team=dark_aqua] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_dark_aqua 3
execute if entity @s[team=dark_blue] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_dark_blue 3
execute if entity @s[team=dark_gray] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_dark_gray 3
execute if entity @s[team=dark_green] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_dark_green 3
execute if entity @s[team=dark_purple] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_dark_purple 3
execute if entity @s[team=dark_red] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_dark_red 3
execute if entity @s[team=gold] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_gold 3 
execute if entity @s[team=gray] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_gray 3
execute if entity @s[team=green] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_green 3
execute if entity @s[team=light_purple] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_light_purple 3
execute if entity @s[team=red] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_red 3
execute if entity @s[team=white] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_white 3
execute if entity @s[team=yellow] if score @s S_CQuestType matches 1.. run scoreboard players add Quest bar_yellow 3

execute if score @s S_CQuestType matches 1.. if entity @s[team=aqua] run scoreboard players add §/ bar_aqua 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=black] run scoreboard players add §§§/ bar_black 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=blue] run scoreboard players add §§§§§/ bar_blue 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_aqua] run scoreboard players add §§§§§§§/ bar_dark_aqua 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_blue] run scoreboard players add §§§§§§§§§/ bar_dark_blue 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_gray] run scoreboard players add §§§§§§§§§§§/ bar_dark_gray 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_green] run scoreboard players add §§§§§§§§§§§§§/ bar_dark_green 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_purple] run scoreboard players add §§§§§§§§§§§§§§§/ bar_dark_purple 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_red] run scoreboard players add §§§§§§§§§§§§§§§§§/ bar_dark_red 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=gold] run scoreboard players add §§§§§§§§§§§§§§§§§§§/ bar_gold 3 
execute if score @s S_CQuestType matches 1.. if entity @s[team=gray] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§/ bar_gray 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=green] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§/ bar_green 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=light_purple] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§§§/ bar_light_purple 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=red] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§§§§§/ bar_red 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=white] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§§§§§§§/ bar_white 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=yellow] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§/ bar_yellow 3

execute if score @s S_CQuestType matches 1.. if entity @s[team=aqua] run scoreboard players add §P bar_aqua 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=black] run scoreboard players add §§P bar_black 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=blue] run scoreboard players add §§§P bar_blue 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_aqua] run scoreboard players add §§§§P bar_dark_aqua 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_blue] run scoreboard players add §§§§§P bar_dark_blue 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_gray] run scoreboard players add §§§§§§P bar_dark_gray 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_green] run scoreboard players add §§§§§§§P bar_dark_green 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_purple] run scoreboard players add §§§§§§§§P bar_dark_purple 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_red] run scoreboard players add §§§§§§§§§P bar_dark_red 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=gold] run scoreboard players add §§§§§§§§§§P bar_gold 3 
execute if score @s S_CQuestType matches 1.. if entity @s[team=gray] run scoreboard players add §§§§§§§§§§§P bar_gray 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=green] run scoreboard players add §§§§§§§§§§§§P bar_green 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=light_purple] run scoreboard players add §§§§§§§§§§§§§P bar_light_purple 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=red] run scoreboard players add §§§§§§§§§§§§§§P bar_red 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=white] run scoreboard players add §§§§§§§§§§§§§§§P bar_white 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=yellow] run scoreboard players add §§§§§§§§§§§§§§§§P bar_yellow 3

execute if entity @s[team=aqua] run scoreboard players add §e bar_aqua 3
execute if entity @s[team=black] run scoreboard players add §e bar_black 3
execute if entity @s[team=blue] run scoreboard players add §e bar_blue 3
execute if entity @s[team=dark_aqua] run scoreboard players add §e bar_dark_aqua 3
execute if entity @s[team=dark_blue] run scoreboard players add §e bar_dark_blue 3
execute if entity @s[team=dark_gray] run scoreboard players add §e bar_dark_gray 3
execute if entity @s[team=dark_green] run scoreboard players add §e bar_dark_green 3
execute if entity @s[team=dark_purple] run scoreboard players add §e bar_dark_purple 3
execute if entity @s[team=dark_red] run scoreboard players add §e bar_dark_red 3
execute if entity @s[team=gold] run scoreboard players add §e bar_gold 3
execute if entity @s[team=gray] run scoreboard players add §e bar_gray 3
execute if entity @s[team=green] run scoreboard players add §e bar_green 3
execute if entity @s[team=light_purple] run scoreboard players add §e bar_light_purple 3
execute if entity @s[team=red] run scoreboard players add §e bar_red 3
execute if entity @s[team=white] run scoreboard players add §e bar_white 3
execute if entity @s[team=yellow] run scoreboard players add §e bar_yellow 3

execute if entity @s[team=aqua] run scoreboard players add §fProfile bar_aqua 3
execute if entity @s[team=black] run scoreboard players add §§§fProfile bar_black 3
execute if entity @s[team=blue] run scoreboard players add §§§§§fProfile bar_blue 3
execute if entity @s[team=dark_aqua] run scoreboard players add §§§§§§§fProfile bar_dark_aqua 3
execute if entity @s[team=dark_blue] run scoreboard players add §§§§§§§§§fProfile bar_dark_blue 3
execute if entity @s[team=dark_gray] run scoreboard players add §§§§§§§§§§§fProfile bar_dark_gray 3
execute if entity @s[team=dark_green] run scoreboard players add §§§§§§§§§§§§§fProfile bar_dark_green 3
execute if entity @s[team=dark_purple] run scoreboard players add §§§§§§§§§§§§§§§fProfile bar_dark_purple 3
execute if entity @s[team=dark_red] run scoreboard players add §§§§§§§§§§§§§§§§§fProfile bar_dark_red 3
execute if entity @s[team=gold] run scoreboard players add §§§§§§§§§§§§§§§§§§§fProfile bar_gold 3
execute if entity @s[team=gray] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§fProfile bar_gray 3
execute if entity @s[team=green] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§fProfile bar_green 3
execute if entity @s[team=light_purple] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_light_purple 3
execute if entity @s[team=red] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_red 3
execute if entity @s[team=white] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_white 3
execute if entity @s[team=yellow] run scoreboard players add §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_yellow 3

execute if entity @s[tag=HasSlayerQuest] run function slayers:scoreboard/remove_stats
execute if entity @s[tag=HasSlayerQuest] run function slayers:scoreboard/add_stats
#-------------------TAG--------------------#
tag @s remove End_DragScoreboard
#------------------------------------------#