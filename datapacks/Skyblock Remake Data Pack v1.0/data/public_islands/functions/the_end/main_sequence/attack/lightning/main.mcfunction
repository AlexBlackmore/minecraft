#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DRAGON ATTACK---------------#
execute as @e[type=ender_dragon,name=!"Ender Dragon"] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute if score $AbilityTimer End_DragSeq matches -1 as @e[type=ender_dragon,name=!"Ender Dragon"] at @s run summon lightning_bolt ~ ~ ~
execute if score $AbilityTimer End_DragSeq matches -6 as @e[type=ender_dragon,name=!"Ender Dragon"] at @s run summon lightning_bolt ~ ~ ~

execute if score $AbilityTimer End_DragSeq matches -40 as @a[scores={SubLocation=35}] at @s if block ~ ~2 ~ air run function public_islands:the_end/main_sequence/attack/lightning/hit_player
execute if score $AbilityTimer End_DragSeq matches -40 as @e[type=ender_dragon,name=!"Ender Dragon"] at @s run function public_islands:the_end/main_sequence/attack/lightning/cosmetic
execute if score $AbilityTimer End_DragSeq matches -40 run function public_islands:the_end/main_sequence/attack/generate_timer
#------------------------------------------#