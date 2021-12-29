#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation @s S_FishingP = @s S_FishingEXP
scoreboard players operation @s S_FishingP *= c100 Constant
scoreboard players operation @s S_FishingP /= @s S_FishingEXPN
#------------------------------------------#