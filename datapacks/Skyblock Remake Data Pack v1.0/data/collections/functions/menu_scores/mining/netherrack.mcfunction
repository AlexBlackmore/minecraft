#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FARMING------------------#
scoreboard players set @s M_NewPage 50

scoreboard players operation @p C_NetherrackP1 = @p C_NetherrackS
scoreboard players operation @p C_NetherrackP1 *= c100 Constant
scoreboard players operation @p C_NetherrackP1 /= Netherrack1 C_Levels
scoreboard players set @p[scores={C_NetherrackP1=100..}] C_NetherrackP1 100

scoreboard players operation @p C_NetherrackP2 = @p C_NetherrackS
scoreboard players operation @p C_NetherrackP2 *= c100 Constant
scoreboard players operation @p C_NetherrackP2 /= Netherrack2 C_Levels
scoreboard players set @p[scores={C_NetherrackP2=100..}] C_NetherrackP2 100

scoreboard players operation @p C_NetherrackP3 = @p C_NetherrackS
scoreboard players operation @p C_NetherrackP3 *= c100 Constant
scoreboard players operation @p C_NetherrackP3 /= Netherrack3 C_Levels
scoreboard players set @p[scores={C_NetherrackP3=100..}] C_NetherrackP3 100
#------------------------------------------#