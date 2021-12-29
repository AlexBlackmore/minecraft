#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FARMING------------------#
scoreboard players set @s M_NewPage 25

scoreboard players operation @p C_SeedsP1 = @p C_SeedsS
scoreboard players operation @p C_SeedsP1 *= c100 Constant
scoreboard players operation @p C_SeedsP1 /= Seeds1 C_Levels
scoreboard players set @p[scores={C_SeedsP1=100..}] C_SeedsP1 100

scoreboard players operation @p C_SeedsP2 = @p C_SeedsS
scoreboard players operation @p C_SeedsP2 *= c100 Constant
scoreboard players operation @p C_SeedsP2 /= Seeds2 C_Levels
scoreboard players set @p[scores={C_SeedsP2=100..}] C_SeedsP2 100

scoreboard players operation @p C_SeedsP3 = @p C_SeedsS
scoreboard players operation @p C_SeedsP3 *= c100 Constant
scoreboard players operation @p C_SeedsP3 /= Seeds3 C_Levels
scoreboard players set @p[scores={C_SeedsP3=100..}] C_SeedsP3 100

scoreboard players operation @p C_SeedsP4 = @p C_SeedsS
scoreboard players operation @p C_SeedsP4 *= c100 Constant
scoreboard players operation @p C_SeedsP4 /= Seeds4 C_Levels
scoreboard players set @p[scores={C_SeedsP4=100..}] C_SeedsP4 100

scoreboard players operation @p C_SeedsP5 = @p C_SeedsS
scoreboard players operation @p C_SeedsP5 *= c100 Constant
scoreboard players operation @p C_SeedsP5 /= Seeds5 C_Levels
scoreboard players set @p[scores={C_SeedsP5=100..}] C_SeedsP5 100

scoreboard players operation @p C_SeedsP6 = @p C_SeedsS
scoreboard players operation @p C_SeedsP6 *= c100 Constant
scoreboard players operation @p C_SeedsP6 /= Seeds6 C_Levels
scoreboard players set @p[scores={C_SeedsP6=100..}] C_SeedsP6 100
#------------------------------------------#