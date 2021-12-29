#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 3
function skyblock:random/range_lcg

tag @p add RandomSlayerQuest
execute if score out RandMath matches 1 if score $RandomQuest Temp matches 3 as @p at @s run function slayers:start_quest/zombie/3
execute if score out RandMath matches 2 if score $RandomQuest Temp matches 3 as @p at @s run function slayers:start_quest/spider/3
execute if score out RandMath matches 3 if score $RandomQuest Temp matches 3 as @p at @s run function slayers:start_quest/wolf/3

execute if score out RandMath matches 1 if score $RandomQuest Temp matches 4 as @p at @s run function slayers:start_quest/zombie/4
execute if score out RandMath matches 2 if score $RandomQuest Temp matches 4 as @p at @s run function slayers:start_quest/spider/4
execute if score out RandMath matches 3 if score $RandomQuest Temp matches 4 as @p at @s run function slayers:start_quest/wolf/4

execute as @p at @s run function menu:remove_menu
