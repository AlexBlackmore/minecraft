#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MOB COUNTING---------------#
execute as @e[tag=DiamondZombieCounter] at @s store result score @s PI_DeepCaverns if entity @e[tag=DiamondZombie,distance=..15]
execute as @e[tag=DiamondSkeletonCounter] at @s store result score @s PI_DeepCaverns if entity @e[tag=DiamondSkeleton,distance=..15]
#----------------DEEP CAVERNS--------------#
execute as @e[tag=DiamondZombieCounter] at @s if score @s PI_DeepCaverns matches ..1 run function mobs:spawners/deep_caverns/spawn_diamond_zombie
execute as @e[tag=DiamondSkeletonCounter] at @s if score @s PI_DeepCaverns matches ..1 run function mobs:spawners/deep_caverns/spawn_diamond_skeleton
#------------------------------------------#