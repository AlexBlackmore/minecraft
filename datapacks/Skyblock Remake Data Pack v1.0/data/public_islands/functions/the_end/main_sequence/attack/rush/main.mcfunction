#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DRAGON ATTACK---------------#
execute as @e[type=ender_dragon,name=!"Ender Dragon"] at @s facing entity @p[tag=End_RushTarget] feet run tp @s ^ ^ ^0.7 ~180 ~
execute as @e[type=ender_dragon,name=!"Ender Dragon"] at @s positioned ^ ^ ^1 as @p[tag=End_RushTarget,distance=..5] run function public_islands:the_end/main_sequence/attack/rush/hit_player

execute as @a[tag=End_RushTarget] unless entity @s[scores={SubLocation=35}] run tag @s remove End_RushTarget
execute if score $AbilityTimer End_DragSeq matches ..-100 run function public_islands:the_end/main_sequence/attack/generate_timer
#------------------------------------------#