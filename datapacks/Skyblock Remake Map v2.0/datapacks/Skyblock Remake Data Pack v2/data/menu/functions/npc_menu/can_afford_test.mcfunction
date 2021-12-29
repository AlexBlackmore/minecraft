#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------GET COINS-----------------#
execute if entity @p[team=aqua] run scoreboard players operation $PlayerCoins Temp = aqua Coins
execute if entity @p[team=black] run scoreboard players operation $PlayerCoins Temp = black Coins
execute if entity @p[team=blue] run scoreboard players operation $PlayerCoins Temp = blue Coins
execute if entity @p[team=dark_aqua] run scoreboard players operation $PlayerCoins Temp = dark_aqua Coins
execute if entity @p[team=dark_blue] run scoreboard players operation $PlayerCoins Temp = dark_blue Coins
execute if entity @p[team=dark_gray] run scoreboard players operation $PlayerCoins Temp = dark_gray Coins
execute if entity @p[team=dark_green] run scoreboard players operation $PlayerCoins Temp = dark_green Coins
execute if entity @p[team=dark_purple] run scoreboard players operation $PlayerCoins Temp = dark_purple Coins
execute if entity @p[team=dark_red] run scoreboard players operation $PlayerCoins Temp = dark_red Coins
execute if entity @p[team=gold] run scoreboard players operation $PlayerCoins Temp = gold Coins
execute if entity @p[team=gray] run scoreboard players operation $PlayerCoins Temp = gray Coins
execute if entity @p[team=green] run scoreboard players operation $PlayerCoins Temp = green Coins
execute if entity @p[team=light_purple] run scoreboard players operation $PlayerCoins Temp = light_purple Coins
execute if entity @p[team=red] run scoreboard players operation $PlayerCoins Temp = red Coins
execute if entity @p[team=white] run scoreboard players operation $PlayerCoins Temp = white Coins
execute if entity @p[team=yellow] run scoreboard players operation $PlayerCoins Temp = yellow Coins
#----MATERIALS INSTEAD OF COINS NEEDED-----#
execute if score $NPCItemCost Temp matches ..-1 run function menu:npc_menu/material_cost_list
#-------------NOT ENOUGH COINS-------------#
execute if score $PlayerCoins Temp < $NPCItemCost Temp if entity @p[scores={CraftFullInv=0}] run tellraw @p {"text":"You don't have enough Coins!","color":"red"}
execute if score $PlayerCoins Temp < $NPCItemCost Temp if entity @p[scores={CraftFullInv=0}] run playsound minecraft:entity.villager.no master @p ~ ~ ~ 1 1 1
#----------SUCCESSFUL COIN TRADE-----------#
execute if score $NPCItemCost Temp matches 1.. if score $PlayerCoins Temp >= $NPCItemCost Temp if entity @p[scores={CraftFullInv=0}] run scoreboard players operation @p AddCoins = $NPCItemCost Temp
execute if score $NPCItemCost Temp matches 1.. if score $PlayerCoins Temp >= $NPCItemCost Temp if entity @p[scores={CraftFullInv=0}] run scoreboard players operation @p AddCoins *= c-1 Constant
execute if score $NPCItemCost Temp matches 1.. if score $PlayerCoins Temp >= $NPCItemCost Temp if entity @p[scores={CraftFullInv=0}] run playsound minecraft:block.note_block.pling master @p ~ ~ ~ 1 2 1
execute if score $NPCItemCost Temp matches 1.. if score $PlayerCoins Temp >= $NPCItemCost Temp if entity @p[scores={CraftFullInv=0}] run tag @s add NPCPurchaseSuccess
#--------NOT ENOUGH INVENTORY SPACE--------#
execute if entity @p[scores={CraftFullInv=1}] run function menu:trades/fail_nospace
#------------------------------------------#