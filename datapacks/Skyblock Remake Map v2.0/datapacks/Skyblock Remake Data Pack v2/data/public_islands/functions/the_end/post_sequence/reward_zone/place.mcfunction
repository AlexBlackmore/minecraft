#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------POST DRAG SEQUENCE------------#
execute as @e[tag=End_RewardBlock,tag=!End_RewardBlockCenter] at @s run clone ~ ~ ~ ~ ~ ~ ~ 1 ~ replace
execute as @e[tag=End_RewardBlock,tag=!End_RewardBlockCenter] at @s run setblock ~ ~ ~ purple_terracotta

execute as @e[tag=End_RewardBlockCenter] at @s run clone ~ ~-1 ~ ~ ~ ~ ~ 0 ~ replace
execute as @e[tag=End_RewardBlockCenter] at @s run setblock ~ ~ ~ glass
execute as @e[tag=End_RewardBlockCenter] at @s run setblock ~ ~-1 ~ beacon
#------------------------------------------#