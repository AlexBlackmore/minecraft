#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------START DRAG SEQUENCE------------#
scoreboard players add Global End_DragSeq 1

execute if score Global End_DragSeq matches 200 as @e[tag=End_EyeStand] run function public_islands:the_end/summon_sequence/eye_float
execute if score Global End_DragSeq matches 200..250 as @e[tag=End_EyeStand] at @s run tp @s ~ ~0.04 ~
execute if score Global End_DragSeq matches 250 run function public_islands:the_end/summon_sequence/egg_crack_start
execute if score Global End_DragSeq matches 250..310 as @e[tag=End_CrackStand] at @s run function public_islands:the_end/summon_sequence/crack_stand
execute if score Global End_DragSeq matches 360.. in skyblock:the_end run function public_islands:the_end/summon_sequence/open_egg
#------------------------------------------#