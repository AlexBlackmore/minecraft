#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------DURING DRAG SEQUENCE-----------#
scoreboard players add @s P_Health 22500
execute if score MaxHP End_DragSeq < @s P_Health run scoreboard players operation @s P_Health = MaxHP End_DragSeq
#------------------------------------------#