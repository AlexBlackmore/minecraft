#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MOB COUNTING---------------#
execute as @e[tag=SmallSlimeCounter] at @s store result score @s PI_DeepCaverns if entity @e[tag=SmallSlime,distance=..15]
execute as @e[tag=MediumSlimeCounter] at @s store result score @s PI_DeepCaverns if entity @e[tag=MediumSlime,distance=..15]
execute as @e[tag=LargeSlimeCounter] at @s store result score @s PI_DeepCaverns if entity @e[tag=LargeSlime,distance=..15]
#----------------DEEP CAVERNS--------------#
execute as @e[tag=SmallSlimeCounter] at @s if score @s PI_DeepCaverns matches ..2 run function mobs:spawners/deep_caverns/spawn_small_slime
execute as @e[tag=MediumSlimeCounter] at @s if score @s PI_DeepCaverns matches ..1 run function mobs:spawners/deep_caverns/spawn_medium_slime
execute as @e[tag=LargeSlimeCounter] at @s if score @s PI_DeepCaverns matches ..0 run function mobs:spawners/deep_caverns/spawn_large_slime
#------------------------------------------#