#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------POST DRAG SEQUENCE------------#
scoreboard players set RewardZone End_DragSeq 0
execute as @e[tag=End_RewardBlock] at @s if block ~ ~ ~ #skyblock:allowed run tp @s ~ ~-1 ~
execute as @e[tag=End_RewardBlock] at @s if block ~ ~ ~ #skyblock:allowed run scoreboard players set RewardZone End_DragSeq 1
execute if score RewardZone End_DragSeq matches 1 run function public_islands:the_end/post_sequence/reward_zone/move
#------------------------------------------#