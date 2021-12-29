#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----GET NUMBER OF PLAYERS WHO DAMAGED----#
scoreboard players set Global End_DmgRanking 0
execute as @a[scores={End_DragDamage=1..}] run scoreboard players add Global End_DmgRanking 1
#----------PLAYER DAMAGE RANKINGS----------#
tag @a[scores={End_DragDamage=1..}] add End_Ranking
function public_islands:the_end/post_sequence/damage_rankings_loop
tag @a remove End_Ranking
#------------------------------------------#