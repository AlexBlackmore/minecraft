#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MOB COUNTING---------------#
execute as @e[tag=CryptGhoulCounter] at @s store result score @s PI_CoalMines if entity @e[tag=CryptGhoul,distance=..25]
execute as @e[tag=GoldenGhoulCounter] at @s store result score @s PI_CoalMines if entity @e[tag=GoldenGhoul,distance=..25]
#----------------DEEP CAVERNS--------------#
execute as @e[tag=CryptGhoulCounter] at @s if score @s PI_CoalMines matches ..2 run function mobs:spawners/coal_mines/spawn_crypt_ghoul
execute as @e[tag=GoldenGhoulCounter] at @s if score @s PI_CoalMines matches ..0 run function mobs:spawners/coal_mines/spawn_golden_ghoul
#------------------------------------------#