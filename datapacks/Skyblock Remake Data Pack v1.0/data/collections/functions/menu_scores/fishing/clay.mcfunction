#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FARMING------------------#
scoreboard players set @s M_NewPage 75

scoreboard players operation @p C_ClayP1 = @p C_ClayS
scoreboard players operation @p C_ClayP1 *= c100 Constant
scoreboard players operation @p C_ClayP1 /= Clay1 C_Levels
scoreboard players set @p[scores={C_ClayP1=100..}] C_ClayP1 100

scoreboard players operation @p C_ClayP2 = @p C_ClayS
scoreboard players operation @p C_ClayP2 *= c100 Constant
scoreboard players operation @p C_ClayP2 /= Clay2 C_Levels
scoreboard players set @p[scores={C_ClayP2=100..}] C_ClayP2 100

scoreboard players operation @p C_ClayP3 = @p C_ClayS
scoreboard players operation @p C_ClayP3 *= c100 Constant
scoreboard players operation @p C_ClayP3 /= Clay3 C_Levels
scoreboard players set @p[scores={C_ClayP3=100..}] C_ClayP3 100

scoreboard players operation @p C_ClayP4 = @p C_ClayS
scoreboard players operation @p C_ClayP4 *= c100 Constant
scoreboard players operation @p C_ClayP4 /= Clay4 C_Levels
scoreboard players set @p[scores={C_ClayP4=100..}] C_ClayP4 100

scoreboard players operation @p C_ClayP5 = @p C_ClayS
scoreboard players operation @p C_ClayP5 *= c100 Constant
scoreboard players operation @p C_ClayP5 /= Clay5 C_Levels
scoreboard players set @p[scores={C_ClayP5=100..}] C_ClayP5 100
#------------------------------------------#