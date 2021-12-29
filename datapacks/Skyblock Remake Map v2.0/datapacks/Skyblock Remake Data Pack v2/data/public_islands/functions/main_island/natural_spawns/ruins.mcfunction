#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MOB COUNTING-------è--------#
execute as @e[tag=WolfCounter] at @s store result score @s PI_Castle if entity @e[tag=Wolf,distance=..15]
execute as @e[tag=OldWolfCounter] at @s store result score @s PI_Castle if entity @e[tag=OldWolf,distance=..15]
#------------------CASTLE------------------#
execute as @e[tag=WolfCounter] at @s if score @s PI_Castle matches ..3 run function mobs:spawners/ruins/spawn_wolf
execute as @e[tag=OldWolfCounter] at @s if score @s PI_Castle matches ..0 run function mobs:spawners/ruins/spawn_old_wolf
#------------------------------------------#