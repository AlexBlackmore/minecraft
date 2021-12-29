#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----MATERIALS INSTEAD OF COINS NEEDED-----#
execute if score $NPCItemCost Temp matches -1 store result score @s TradeHadItems run clear @p gold_ingot{Base:{Vanilla:1b}} 0
execute if score $NPCItemCost Temp matches -1 if entity @s[scores={TradeHadItems=3..}] if entity @p[scores={CraftFullInv=0}] run clear @p gold_ingot{Base:{Vanilla:1b}} 3
execute if score $NPCItemCost Temp matches -1 if entity @s[scores={TradeHadItems=3..}] if entity @p[scores={CraftFullInv=0}] run loot give @p loot cheats:get_items/pickaxes/golden_pickaxe
execute if score $NPCItemCost Temp matches -1 if entity @s[scores={TradeHadItems=3..}] if entity @p[scores={CraftFullInv=0}] run tag @s add NPCPurchaseSuccess
#-------------------RESET------------------#
scoreboard players reset @s TradeHadItems
#--------SUCCESSFUL MATERIAL TRADE---------#
execute if entity @s[tag=NPCPurchaseSuccess] run playsound minecraft:block.note_block.pling master @p ~ ~ ~ 1 2 1
#----------FAILED MATERIAL TRADE-----------#
execute if entity @s[tag=!NPCPurchaseSuccess] as @p run function menu:trades/fail_noitems
#------------------------------------------#