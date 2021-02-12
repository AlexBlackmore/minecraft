#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DRAGON ATTACK---------------#
execute as @e[type=ender_dragon,name=!"Ender Dragon"] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute if score $AbilityTimer End_DragSeq matches ..-100 run function public_islands:the_end/main_sequence/attack/generate_timer
#------------------------------------------#