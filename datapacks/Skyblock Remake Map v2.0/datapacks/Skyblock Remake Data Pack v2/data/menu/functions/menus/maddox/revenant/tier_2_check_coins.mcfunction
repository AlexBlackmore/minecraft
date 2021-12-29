#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------CHECK-------------------#
scoreboard players operation $QuestCost Temp = Tier2Cost S_ZInfos
scoreboard players set SlayerChosen Temp 1
scoreboard players set SlayerTierChosen Temp 2
execute if score @p S_ZHighSlain matches 1.. run function slayers:check_coins
execute unless score @p S_ZHighSlain matches 1.. run tellraw @p {"text":"Can't start! Slay tier 1 before!","color":"red"}
