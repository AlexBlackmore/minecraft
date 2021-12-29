#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Menu SkyblockModules matches 0.. run scoreboard players set Menu SkyblockModules 1

kill @e[tag=CraftingEvaluator,type=armor_stand]
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}

scoreboard objectives add M_ClickElement dummy
scoreboard objectives add M_CurrentPage dummy
scoreboard objectives add M_NewPage dummy
scoreboard objectives add M_PageDelay dummy
scoreboard objectives add M_DupeNStar dummy
scoreboard objectives add M_NPCMenuPage dummy
scoreboard objectives add MenuSpawnDelay dummy

scoreboard objectives add CraftFilledSlots dummy
scoreboard objectives add CraftDim_x dummy
scoreboard objectives add CraftDim_x1 dummy
scoreboard objectives add CraftDim_x2 dummy
scoreboard objectives add CraftDim_x3 dummy
scoreboard objectives add CraftDim_y dummy
scoreboard objectives add CraftDim_y1 dummy
scoreboard objectives add CraftDim_y2 dummy
scoreboard objectives add CraftDim_y3 dummy
scoreboard objectives add CraftTaken dummy
scoreboard objectives add CraftSlot1 dummy
scoreboard objectives add CraftSlot2 dummy
scoreboard objectives add CraftSlot3 dummy
scoreboard objectives add CraftSlot4 dummy
scoreboard objectives add CraftSlot5 dummy
scoreboard objectives add CraftSlot6 dummy
scoreboard objectives add CraftSlot7 dummy
scoreboard objectives add CraftSlot8 dummy
scoreboard objectives add CraftSlot9 dummy
scoreboard objectives add CraftFullInv dummy

scoreboard objectives add EnchantCount dummy
scoreboard objectives add E_AddBookshelves dummy
scoreboard objectives add E_BaseEnchLevel dummy
scoreboard objectives add E_ModifiedBase dummy
scoreboard objectives add E_RandPercent dummy
scoreboard objectives add E_SelectedSlot dummy
scoreboard objectives add E_TopSlot dummy
scoreboard objectives add E_MidSlot dummy
scoreboard objectives add E_LowSlot dummy
scoreboard objectives add E_Weight dummy
scoreboard objectives add E_XPLevel dummy
scoreboard objectives add E_StatCalc dummy

scoreboard objectives add Ench_Damage dummy
scoreboard objectives add Ench_Strength dummy
scoreboard objectives add Ench_CritChan dummy
scoreboard objectives add Ench_CritDmg dummy
scoreboard objectives add Ench_AtkSpd dummy
scoreboard objectives add Ench_Health dummy
scoreboard objectives add Ench_Defense dummy
scoreboard objectives add Ench_Speed dummy
scoreboard objectives add Ench_Intel dummy
scoreboard objectives add Ench_TrueDef dummy
scoreboard objectives add Ench_SCChance dummy
scoreboard objectives add Ench_MagicFind dummy
scoreboard objectives add Ench_PetLuck dummy

scoreboard objectives add Ench_Level dummy
scoreboard objectives add Ench_ID dummy
scoreboard objectives add Ench_Min dummy
scoreboard objectives add Ench_Max dummy

scoreboard objectives add Anvil_Level dummy
scoreboard objectives add Anvil_RepairC dummy
scoreboard objectives add Anvil_Uses dummy
scoreboard objectives add Anvil_Item1 dummy
scoreboard objectives add Anvil_Item2 dummy

scoreboard objectives add RecipeIndexAt dummy
scoreboard objectives add RecipeListSize dummy

scoreboard objectives add MenuItemChange dummy

scoreboard objectives add AccessoryBagLvl dummy
scoreboard objectives add BaseAccessSlots dummy

scoreboard objectives add TradeHadItems dummy
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Menu Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#