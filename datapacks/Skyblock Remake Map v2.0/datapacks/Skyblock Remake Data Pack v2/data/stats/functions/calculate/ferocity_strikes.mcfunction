#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------FEROCITY STRIKES-------------#
execute if score @s P_Ferocity matches 100.. run scoreboard players operation $BaseFeroStrikes Temp = @s P_Ferocity
execute unless score $BaseFeroStrikes Temp matches 100.. run scoreboard players set $BaseFeroStrikes Temp 0
execute if score $BaseFeroStrikes Temp matches 100.. run scoreboard players operation $BaseFeroStrikes Temp /= c100 Constant


scoreboard players operation $ChanceFor1MoreFero Temp = @s P_Ferocity
execute if score $ChanceFor1MoreFero Temp matches 100.. run scoreboard players operation $ChanceFor1MoreFero Temp %= c100 Constant
#------------------------------------------#