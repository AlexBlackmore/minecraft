#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FEROCITY-----------------#
#Strike the mob in 10 ticks
execute if score @s P_FeroStrikes matches 1.. run tag @s add FeroStrike
#Calculate Strikes
execute as @p run scoreboard players remove @s P_FeroStrikes 1
scoreboard players remove @s P_FeroStrikes 1
#Reset Tags
execute as @p run tag @s add FeroStrikePlayer
tag @s remove Hit
#------------------------------------------#