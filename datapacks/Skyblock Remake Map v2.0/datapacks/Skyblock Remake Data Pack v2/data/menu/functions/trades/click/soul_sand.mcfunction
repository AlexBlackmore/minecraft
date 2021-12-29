#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute store result score @s TradeHadItems run clear @s sand{Base:{Vanilla:1b}} 0
execute store result score @s TradeHadItems2 run clear @s fermented_spider_eye{Base:{Vanilla:1b}} 0
execute if entity @s[scores={TradeHadItems=2..,TradeHadItems2=1..}] run function menu:trades/items/soul_sand
#------------------------------------------#