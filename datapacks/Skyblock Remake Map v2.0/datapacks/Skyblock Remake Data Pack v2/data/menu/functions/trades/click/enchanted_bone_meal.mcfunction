#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute store result score @s TradeHadItems run clear @s bone{Base:{Vanilla:1b}} 0
execute if entity @s[scores={TradeHadItems=64..}] run function menu:trades/items/enchanted_bone_meal
#------------------------------------------#