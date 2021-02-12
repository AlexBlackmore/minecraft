#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MOB COUNTING---------------#
execute as @e[tag=HowlingSpiritCounter] at @s store result score @s PI_HowlingCave if entity @e[tag=HowlingSpirit,distance=..25]
execute as @e[tag=PackSpiritCounter] at @s store result score @s PI_HowlingCave if entity @e[tag=PackSpirit,distance=..25]
execute as @e[tag=SoulAlphaCounter] at @s store result score @s PI_HowlingCave if entity @e[tag=SoulOfTheAlpha,distance=..25]
#----------------HOWLING CAVE--------------#
execute as @e[tag=HowlingSpiritCounter] at @s if score @s PI_HowlingCave matches ..1 run function mobs:spawners/howling_caves/spawn_howling_spirit
execute as @e[tag=PackSpiritCounter] at @s if score @s PI_HowlingCave matches ..2 run function mobs:spawners/howling_caves/spawn_pack_spirit
execute as @e[tag=SoulAlphaCounter] at @s if score @s PI_HowlingCave matches ..0 run function mobs:spawners/howling_caves/spawn_soul_of_the_alpha
#------------------------------------------#