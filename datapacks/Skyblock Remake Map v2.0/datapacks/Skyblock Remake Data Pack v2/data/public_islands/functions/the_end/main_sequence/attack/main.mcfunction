#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DRAGON ATTACK---------------#
scoreboard players remove $AbilityTimer End_DragSeq 1
execute if score $AbilityTimer End_DragSeq matches 0 run function public_islands:the_end/main_sequence/attack/choose_attack

execute if score $AbilityTimer End_DragSeq matches ..0 if score $AbilityType End_DragSeq matches 0 run function public_islands:the_end/main_sequence/attack/rush/main
execute if score $AbilityTimer End_DragSeq matches ..0 if score $AbilityType End_DragSeq matches 1 run function public_islands:the_end/main_sequence/attack/lightning/main
execute if score $AbilityTimer End_DragSeq matches ..0 if score $AbilityType End_DragSeq matches 2 run function public_islands:the_end/main_sequence/attack/fireball/main
execute if score $AbilityTimer End_DragSeq matches ..0 if score $AbilityType End_DragSeq matches 3 run function public_islands:the_end/main_sequence/attack/stop/main
#------------------------------------------#