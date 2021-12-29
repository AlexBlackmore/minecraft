#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players operation $SocialEXPBoost Temp = $SocialEXP Temp
scoreboard players operation $SocialEXPBoost Temp *= @s S_TotalSocialB
scoreboard players operation $SocialEXPBoost Temp /= c100 Constant
scoreboard players operation $SocialEXP Temp += $SocialEXPBoost Temp
#------------------------------------------#