#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------PLAYER DAMAGE RANKINGS----------#
tag @a[tag=End_RankingTest,limit=1] add End_RankingTestCurrent

execute if score @p[tag=End_RankingTestCurrent] End_DragDamage < Current End_DmgRanking run tag @a remove End_RankingTestLowest
execute if score @p[tag=End_RankingTestCurrent] End_DragDamage < Current End_DmgRanking run tag @p[tag=End_RankingTestCurrent] add End_RankingTestLowest
execute if score @p[tag=End_RankingTestCurrent] End_DragDamage < Current End_DmgRanking run scoreboard players operation Current End_DmgRanking = @p[tag=End_RankingTestCurrent] End_DragDamage

tag @a[tag=End_RankingTestCurrent] remove End_RankingTest
tag @a[tag=End_RankingTestCurrent] remove End_RankingTestCurrent
execute if entity @e[tag=End_RankingTest] run function public_islands:the_end/post_sequence/damage_rankings_loop2
#------------------------------------------#