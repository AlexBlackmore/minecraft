#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------CHECKS-------------------#
function menu:remove_menu
execute if score SlayerChosen Temp matches 1 if score SlayerTierChosen Temp matches 1 as @p at @s run function slayers:start_quest/zombie/1
execute if score SlayerChosen Temp matches 1 if score SlayerTierChosen Temp matches 2 as @p at @s run function slayers:start_quest/zombie/2
execute if score SlayerChosen Temp matches 1 if score SlayerTierChosen Temp matches 3 as @p at @s run function slayers:start_quest/zombie/3
execute if score SlayerChosen Temp matches 1 if score SlayerTierChosen Temp matches 4 as @p at @s run function slayers:start_quest/zombie/4

execute if score SlayerChosen Temp matches 2 if score SlayerTierChosen Temp matches 1 as @p at @s run function slayers:start_quest/spider/1
execute if score SlayerChosen Temp matches 2 if score SlayerTierChosen Temp matches 2 as @p at @s run function slayers:start_quest/spider/2
execute if score SlayerChosen Temp matches 2 if score SlayerTierChosen Temp matches 3 as @p at @s run function slayers:start_quest/spider/3
execute if score SlayerChosen Temp matches 2 if score SlayerTierChosen Temp matches 4 as @p at @s run function slayers:start_quest/spider/4

execute if score SlayerChosen Temp matches 3 if score SlayerTierChosen Temp matches 1 as @p at @s run function slayers:start_quest/wolf/1
execute if score SlayerChosen Temp matches 3 if score SlayerTierChosen Temp matches 2 as @p at @s run function slayers:start_quest/wolf/2
execute if score SlayerChosen Temp matches 3 if score SlayerTierChosen Temp matches 3 as @p at @s run function slayers:start_quest/wolf/3
execute if score SlayerChosen Temp matches 3 if score SlayerTierChosen Temp matches 4 as @p at @s run function slayers:start_quest/wolf/4
