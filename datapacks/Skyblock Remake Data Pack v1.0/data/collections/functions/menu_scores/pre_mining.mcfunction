#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute if entity @p[team=aqua] as @e[tag=CollectionStand,team=aqua] run function collections:menu_scores/mining
execute if entity @p[team=black] as @e[tag=CollectionStand,team=black] run function collections:menu_scores/mining
execute if entity @p[team=blue] as @e[tag=CollectionStand,team=blue] run function collections:menu_scores/mining
execute if entity @p[team=dark_aqua] as @e[tag=CollectionStand,team=dark_aqua] run function collections:menu_scores/mining
execute if entity @p[team=dark_blue] as @e[tag=CollectionStand,team=dark_blue] run function collections:menu_scores/mining
execute if entity @p[team=dark_gray] as @e[tag=CollectionStand,team=dark_gray] run function collections:menu_scores/mining
execute if entity @p[team=dark_green] as @e[tag=CollectionStand,team=dark_green] run function collections:menu_scores/mining
execute if entity @p[team=dark_purple] as @e[tag=CollectionStand,team=dark_purple] run function collections:menu_scores/mining
execute if entity @p[team=dark_red] as @e[tag=CollectionStand,team=dark_red] run function collections:menu_scores/mining
execute if entity @p[team=gold] as @e[tag=CollectionStand,team=gold] run function collections:menu_scores/mining
execute if entity @p[team=gray] as @e[tag=CollectionStand,team=gray] run function collections:menu_scores/mining
execute if entity @p[team=green] as @e[tag=CollectionStand,team=green] run function collections:menu_scores/mining
execute if entity @p[team=light_purple] as @e[tag=CollectionStand,team=light_purple] run function collections:menu_scores/mining
execute if entity @p[team=red] as @e[tag=CollectionStand,team=red] run function collections:menu_scores/mining
execute if entity @p[team=white] as @e[tag=CollectionStand,team=white] run function collections:menu_scores/mining
execute if entity @p[team=yellow] as @e[tag=CollectionStand,team=yellow] run function collections:menu_scores/mining
scoreboard players set @s M_NewPage 2
#------------------------------------------#