#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MOB COUNTING---------------#
execute as @e[tag=ZombiePigmanCounter] at @s store result score @s PI_DeepCaverns if entity @e[tag=ZombiePigman,distance=..15]
#----------------DEEP CAVERNS--------------#
execute as @e[tag=ZombiePigmanCounter] at @s if score @s PI_DeepCaverns matches ..2 run function mobs:spawners/deep_caverns/spawn_zombie_pigman
#------------------------------------------#