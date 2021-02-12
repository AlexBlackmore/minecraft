#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MOB COUNTING---------------#
execute as @e[tag=WeakEndermanCounter] at @s store result score @s PI_TheEnd if entity @e[tag=WeakEnderman,distance=..15]
execute as @e[tag=MediumEndermanCounter] at @s store result score @s PI_TheEnd if entity @e[tag=MediumEnderman,distance=..15]
execute as @e[tag=StrongEndermanCounter] at @s store result score @s PI_TheEnd if entity @e[tag=StrongEnderman,distance=..15]
execute as @e[tag=ZealotCounter] at @s store result score @s PI_TheEnd if entity @e[tag=Zealot,distance=..15]
execute as @e[tag=ObsidianDefenderCounter] at @s store result score @s PI_TheEnd if entity @e[tag=ObsidianDefender,distance=..15]
execute as @e[tag=WatcherCounter] at @s store result score @s PI_TheEnd if entity @e[tag=Watcher,distance=..15]
#------------------THE END-----------------#
execute as @e[tag=ZealotCounter] at @s unless score Global End_DragSeq matches -10000.. if score @s PI_TheEnd matches ..1 run function mobs:spawners/the_end/spawn_zealot
execute as @e[tag=ObsidianDefenderCounter] at @s unless score Global End_DragSeq matches -10000.. if score @s PI_TheEnd matches ..1 run function mobs:spawners/the_end/spawn_obsidian_defender
execute as @e[tag=WatcherCounter] at @s unless score Global End_DragSeq matches -10000.. if score @s PI_TheEnd matches ..1 run function mobs:spawners/the_end/spawn_watcher
execute as @e[tag=WeakEndermanCounter] at @s if score @s PI_TheEnd matches ..1 run function mobs:spawners/the_end/spawn_weak_enderman
execute as @e[tag=MediumEndermanCounter] at @s if score @s PI_TheEnd matches ..1 run function mobs:spawners/the_end/spawn_medium_enderman
execute as @e[tag=StrongEndermanCounter] at @s if score @s PI_TheEnd matches ..1 run function mobs:spawners/the_end/spawn_strong_enderman
#------------------------------------------#