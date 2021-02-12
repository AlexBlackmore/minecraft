#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------POST DRAG SEQUENCE------------#
execute as @e[tag=End_RewardBlock] unless block ~ ~ ~ minecraft:pink_stained_glass at @s run clone ~ 1 ~ ~ 1 ~ ~ ~ ~ replace
execute as @e[tag=End_RewardBlockCenter] at @s run clone ~ 0 ~ ~ 1 ~ ~ ~-1 ~ replace
execute as @e[tag=End_RewardBlock] at @s run fill ~ 0 ~ ~ 1 ~ end_stone
kill @e[tag=End_RewardBlock]
#------------------------------------------#