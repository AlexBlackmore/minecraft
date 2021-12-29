#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------SCOREBOARD STATS-------------#
execute if entity @s[tag=HasSlayerQuest] run function slayers:scoreboard/remove_stats
execute if entity @s[tag=HasSlayerQuest] run function slayers:scoreboard/add_stats

execute if entity @s[team=aqua] run scoreboard players set §a bar_aqua 2
execute if entity @s[team=black] run scoreboard players set §a bar_black 2
execute if entity @s[team=blue] run scoreboard players set §a bar_blue 2
execute if entity @s[team=dark_aqua] run scoreboard players set §a bar_dark_aqua 2
execute if entity @s[team=dark_blue] run scoreboard players set §a bar_dark_blue 2
execute if entity @s[team=dark_gray] run scoreboard players set §a bar_dark_gray 2
execute if entity @s[team=dark_green] run scoreboard players set §a bar_dark_green 2
execute if entity @s[team=dark_purple] run scoreboard players set §a bar_dark_purple 2
execute if entity @s[team=dark_red] run scoreboard players set §a bar_dark_red 2
execute if entity @s[team=gold] run scoreboard players set §a bar_gold 2
execute if entity @s[team=gray] run scoreboard players set §a bar_gray 2
execute if entity @s[team=green] run scoreboard players set §a bar_green 2
execute if entity @s[team=light_purple] run scoreboard players set §a bar_light_purple 2
execute if entity @s[team=red] run scoreboard players set §a bar_red 2
execute if entity @s[team=white] run scoreboard players set §a bar_white 2
execute if entity @s[team=yellow] run scoreboard players set §a bar_yellow 2

execute if entity @s[team=aqua] run scoreboard players add HP: bar_aqua 1
execute if entity @s[team=black] run scoreboard players add HP: bar_black 1
execute if entity @s[team=blue] run scoreboard players add HP: bar_blue 1
execute if entity @s[team=dark_aqua] run scoreboard players add HP: bar_dark_aqua 1
execute if entity @s[team=dark_blue] run scoreboard players add HP: bar_dark_blue 1
execute if entity @s[team=dark_gray] run scoreboard players add HP: bar_dark_gray 1
execute if entity @s[team=dark_green] run scoreboard players add HP: bar_dark_green 1
execute if entity @s[team=dark_purple] run scoreboard players add HP: bar_dark_purple 1
execute if entity @s[team=dark_red] run scoreboard players add HP: bar_dark_red 1
execute if entity @s[team=gold] run scoreboard players add HP: bar_gold 1 
execute if entity @s[team=gray] run scoreboard players add HP: bar_gray 1
execute if entity @s[team=green] run scoreboard players add HP: bar_green 1
execute if entity @s[team=light_purple] run scoreboard players add HP: bar_light_purple 1
execute if entity @s[team=red] run scoreboard players add HP: bar_red 1
execute if entity @s[team=white] run scoreboard players add HP: bar_white 1
execute if entity @s[team=yellow] run scoreboard players add HP: bar_yellow 1

execute if entity @s[team=aqua] run scoreboard players set §fDamage: bar_aqua 0
execute if entity @s[team=black] run scoreboard players set §§§fDamage: bar_black 0
execute if entity @s[team=blue] run scoreboard players set §§§§§fDamage: bar_blue 0
execute if entity @s[team=dark_aqua] run scoreboard players set §§§§§§§fDamage: bar_dark_aqua 0
execute if entity @s[team=dark_blue] run scoreboard players set §§§§§§§§§fDamage: bar_dark_blue 0
execute if entity @s[team=dark_gray] run scoreboard players set §§§§§§§§§§§fDamage: bar_dark_gray 0
execute if entity @s[team=dark_green] run scoreboard players set §§§§§§§§§§§§§fDamage: bar_dark_green 0
execute if entity @s[team=dark_purple] run scoreboard players set §§§§§§§§§§§§§§§fDamage: bar_dark_purple 0
execute if entity @s[team=dark_red] run scoreboard players set §§§§§§§§§§§§§§§§§fDamage: bar_dark_red 0
execute if entity @s[team=gold] run scoreboard players set §§§§§§§§§§§§§§§§§§§fDamage: bar_gold 0 
execute if entity @s[team=gray] run scoreboard players set §§§§§§§§§§§§§§§§§§§§§fDamage: bar_gray 0
execute if entity @s[team=green] run scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_green 0
execute if entity @s[team=light_purple] run scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_light_purple 0
execute if entity @s[team=red] run scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_red 0
execute if entity @s[team=white] run scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_white 0
execute if entity @s[team=yellow] run scoreboard players set §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fDamage: bar_yellow 0

execute if entity @s[team=aqua] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_aqua 3
execute if entity @s[team=black] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_black 3
execute if entity @s[team=blue] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_blue 3
execute if entity @s[team=dark_aqua] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_dark_aqua 3
execute if entity @s[team=dark_blue] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_dark_blue 3 
execute if entity @s[team=dark_gray] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_dark_gray 3
execute if entity @s[team=dark_green] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_dark_green 3
execute if entity @s[team=dark_purple] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_dark_purple 3
execute if entity @s[team=dark_red] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_dark_red 3
execute if entity @s[team=gold] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_gold 3
execute if entity @s[team=gray] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_gray 3
execute if entity @s[team=green] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_green 3
execute if entity @s[team=light_purple] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_light_purple 3
execute if entity @s[team=red] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_red 3
execute if entity @s[team=white] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_white 3
execute if entity @s[team=yellow] if score @s S_CQuestType matches 1.. run scoreboard players remove §s bar_yellow 3

execute if entity @s[team=aqua] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_aqua 3
execute if entity @s[team=black] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_black 3
execute if entity @s[team=blue] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_blue 3
execute if entity @s[team=dark_aqua] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_dark_aqua 3
execute if entity @s[team=dark_blue] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_dark_blue 3
execute if entity @s[team=dark_gray] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_dark_gray 3
execute if entity @s[team=dark_green] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_dark_green 3
execute if entity @s[team=dark_purple] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_dark_purple 3
execute if entity @s[team=dark_red] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_dark_red 3
execute if entity @s[team=gold] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_gold 3 
execute if entity @s[team=gray] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_gray 3
execute if entity @s[team=green] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_green 3
execute if entity @s[team=light_purple] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_light_purple 3
execute if entity @s[team=red] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_red 3
execute if entity @s[team=white] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_white 3
execute if entity @s[team=yellow] if score @s S_CQuestType matches 1.. run scoreboard players remove Quest bar_yellow 3

execute if score @s S_CQuestType matches 1.. if entity @s[team=aqua] run scoreboard players remove §/ bar_aqua 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=black] run scoreboard players remove §§§/ bar_black 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=blue] run scoreboard players remove §§§§§/ bar_blue 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_aqua] run scoreboard players remove §§§§§§§/ bar_dark_aqua 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_blue] run scoreboard players remove §§§§§§§§§/ bar_dark_blue 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_gray] run scoreboard players remove §§§§§§§§§§§/ bar_dark_gray 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_green] run scoreboard players remove §§§§§§§§§§§§§/ bar_dark_green 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_purple] run scoreboard players remove §§§§§§§§§§§§§§§/ bar_dark_purple 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_red] run scoreboard players remove §§§§§§§§§§§§§§§§§/ bar_dark_red 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=gold] run scoreboard players remove §§§§§§§§§§§§§§§§§§§/ bar_gold 3 
execute if score @s S_CQuestType matches 1.. if entity @s[team=gray] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§/ bar_gray 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=green] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§/ bar_green 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=light_purple] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§§§/ bar_light_purple 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=red] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§§§§§/ bar_red 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=white] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§§§§§§§/ bar_white 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=yellow] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§/ bar_yellow 3

execute if score @s S_CQuestType matches 1.. if entity @s[team=aqua] run scoreboard players remove §P bar_aqua 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=black] run scoreboard players remove §§P bar_black 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=blue] run scoreboard players remove §§§P bar_blue 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_aqua] run scoreboard players remove §§§§P bar_dark_aqua 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_blue] run scoreboard players remove §§§§§P bar_dark_blue 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_gray] run scoreboard players remove §§§§§§P bar_dark_gray 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_green] run scoreboard players remove §§§§§§§P bar_dark_green 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_purple] run scoreboard players remove §§§§§§§§P bar_dark_purple 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=dark_red] run scoreboard players remove §§§§§§§§§P bar_dark_red 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=gold] run scoreboard players remove §§§§§§§§§§P bar_gold 3 
execute if score @s S_CQuestType matches 1.. if entity @s[team=gray] run scoreboard players remove §§§§§§§§§§§P bar_gray 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=green] run scoreboard players remove §§§§§§§§§§§§P bar_green 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=light_purple] run scoreboard players remove §§§§§§§§§§§§§P bar_light_purple 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=red] run scoreboard players remove §§§§§§§§§§§§§§P bar_red 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=white] run scoreboard players remove §§§§§§§§§§§§§§§P bar_white 3
execute if score @s S_CQuestType matches 1.. if entity @s[team=yellow] run scoreboard players remove §§§§§§§§§§§§§§§§P bar_yellow 3


execute if entity @s[team=aqua] run scoreboard players remove §e bar_aqua 3
execute if entity @s[team=black] run scoreboard players remove §e bar_black 3
execute if entity @s[team=blue] run scoreboard players remove §e bar_blue 3
execute if entity @s[team=dark_aqua] run scoreboard players remove §e bar_dark_aqua 3
execute if entity @s[team=dark_blue] run scoreboard players remove §e bar_dark_blue 3
execute if entity @s[team=dark_gray] run scoreboard players remove §e bar_dark_gray 3
execute if entity @s[team=dark_green] run scoreboard players remove §e bar_dark_green 3
execute if entity @s[team=dark_purple] run scoreboard players remove §e bar_dark_purple 3
execute if entity @s[team=dark_red] run scoreboard players remove §e bar_dark_red 3
execute if entity @s[team=gold] run scoreboard players remove §e bar_gold 3
execute if entity @s[team=gray] run scoreboard players remove §e bar_gray 3
execute if entity @s[team=green] run scoreboard players remove §e bar_green 3
execute if entity @s[team=light_purple] run scoreboard players remove §e bar_light_purple 3
execute if entity @s[team=red] run scoreboard players remove §e bar_red 3
execute if entity @s[team=white] run scoreboard players remove §e bar_white 3
execute if entity @s[team=yellow] run scoreboard players remove §e bar_yellow 3

execute if entity @s[team=aqua] run scoreboard players remove §fProfile bar_aqua 3
execute if entity @s[team=black] run scoreboard players remove §§§fProfile bar_black 3
execute if entity @s[team=blue] run scoreboard players remove §§§§§fProfile bar_blue 3
execute if entity @s[team=dark_aqua] run scoreboard players remove §§§§§§§fProfile bar_dark_aqua 3
execute if entity @s[team=dark_blue] run scoreboard players remove §§§§§§§§§fProfile bar_dark_blue 3
execute if entity @s[team=dark_gray] run scoreboard players remove §§§§§§§§§§§fProfile bar_dark_gray 3
execute if entity @s[team=dark_green] run scoreboard players remove §§§§§§§§§§§§§fProfile bar_dark_green 3
execute if entity @s[team=dark_purple] run scoreboard players remove §§§§§§§§§§§§§§§fProfile bar_dark_purple 3
execute if entity @s[team=dark_red] run scoreboard players remove §§§§§§§§§§§§§§§§§fProfile bar_dark_red 3
execute if entity @s[team=gold] run scoreboard players remove §§§§§§§§§§§§§§§§§§§fProfile bar_gold 3
execute if entity @s[team=gray] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§fProfile bar_gray 3
execute if entity @s[team=green] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§fProfile bar_green 3
execute if entity @s[team=light_purple] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_light_purple 3
execute if entity @s[team=red] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_red 3
execute if entity @s[team=white] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_white 3
execute if entity @s[team=yellow] run scoreboard players remove §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§fProfile bar_yellow 3
#-------------------TAG--------------------#
tag @s add End_DragScoreboard
#------------------------------------------#