#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------PLAYER DAMAGE RANKINGS----------#
scoreboard players set Current End_DmgRanking 2147483647
tag @a[tag=End_Ranking] add End_RankingTest
function public_islands:the_end/post_sequence/damage_rankings_loop2

scoreboard players operation @p[tag=End_RankingTestLowest] End_DmgRanking = Global End_DmgRanking
tag @p[tag=End_RankingTestLowest] remove End_Ranking
tag @p[tag=End_RankingTestLowest] remove End_RankingTestLowest

scoreboard players remove Global End_DmgRanking 1
execute if score Global End_DmgRanking matches 1.. run function public_islands:the_end/post_sequence/damage_rankings_loop
#------------------------------------------#