#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation @s S_RunecraftingP = @s S_RunecraftEXP
scoreboard players operation @s S_RunecraftingP *= c100 Constant
scoreboard players operation @s S_RunecraftingP /= @s S_RunecraftEXPN
#------------------------------------------#