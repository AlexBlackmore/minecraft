#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
execute as @a[tag=KilledZombie] run scoreboard players operation @s S_CQuestEXP += @s Temp
tag @a[tag=KilledZombie] remove KilledZombie
