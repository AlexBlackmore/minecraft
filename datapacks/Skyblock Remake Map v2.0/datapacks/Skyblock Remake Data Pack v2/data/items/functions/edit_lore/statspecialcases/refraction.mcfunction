#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MAIN LORE-----------------#
scoreboard players operation Temp_Const I_LightLevel = Temp_A I_LightLevel
scoreboard players operation Temp_Const I_LightLevel *= c10 Constant
scoreboard players operation Temp_Const I_LightLevel += Temp_B I_LightLevel

scoreboard players operation @s Ench_Defense *= Temp_Const I_LightLevel
scoreboard players operation @s Ench_Defense /= c1000 Constant

scoreboard players operation @s Ench_Intel *= Temp_Const I_LightLevel
scoreboard players operation @s Ench_Intel /= c1000 Constant
#------------------------------------------#