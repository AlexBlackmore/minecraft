#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FARMING------------------#
scoreboard players set @s M_NewPage 74

scoreboard players operation @p C_PshardP1 = @p C_PshardS
scoreboard players operation @p C_PshardP1 *= c100 Constant
scoreboard players operation @p C_PshardP1 /= Pshard1 C_Levels
scoreboard players set @p[scores={C_PshardP1=100..}] C_PshardP1 100

scoreboard players operation @p C_PshardP2 = @p C_PshardS
scoreboard players operation @p C_PshardP2 *= c100 Constant
scoreboard players operation @p C_PshardP2 /= Pshard2 C_Levels
scoreboard players set @p[scores={C_PshardP2=100..}] C_PshardP2 100

scoreboard players operation @p C_PshardP3 = @p C_PshardS
scoreboard players operation @p C_PshardP3 *= c100 Constant
scoreboard players operation @p C_PshardP3 /= Pshard3 C_Levels
scoreboard players set @p[scores={C_PshardP3=100..}] C_PshardP3 100

scoreboard players operation @p C_PshardP4 = @p C_PshardS
scoreboard players operation @p C_PshardP4 *= c100 Constant
scoreboard players operation @p C_PshardP4 /= Pshard4 C_Levels
scoreboard players set @p[scores={C_PshardP4=100..}] C_PshardP4 100

scoreboard players operation @p C_PshardP5 = @p C_PshardS
scoreboard players operation @p C_PshardP5 *= c100 Constant
scoreboard players operation @p C_PshardP5 /= Pshard5 C_Levels
scoreboard players set @p[scores={C_PshardP5=100..}] C_PshardP5 100
#------------------------------------------#