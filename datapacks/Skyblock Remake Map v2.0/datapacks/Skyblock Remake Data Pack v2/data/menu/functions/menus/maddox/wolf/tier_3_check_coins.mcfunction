#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------CHECK-------------------#
scoreboard players operation $QuestCost Temp = Tier3Cost S_WInfos
scoreboard players set SlayerChosen Temp 3
scoreboard players set SlayerTierChosen Temp 3
execute if score @p S_WHighSlain matches 1.. run function slayers:check_coins
execute unless score @p S_WHighSlain matches 1.. run tellraw @p {"text":"Can't start! Slay tier 2 before!","color":"red"}
