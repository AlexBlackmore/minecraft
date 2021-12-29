#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Skills SkyblockModules matches 0.. run scoreboard players set Skills SkyblockModules 1
function skills:mining/reset

scoreboard objectives add AddFarming dummy
scoreboard objectives add AddMining dummy
scoreboard objectives add AddCombat dummy
scoreboard objectives add AddForaging dummy
scoreboard objectives add AddFishing dummy
scoreboard objectives add AddEnchanting dummy
scoreboard objectives add AddAlchemy dummy
scoreboard objectives add AddCarpentry dummy
scoreboard objectives add AddRunecraft dummy
scoreboard objectives add AddTaming dummy
scoreboard objectives add AddSocial dummy

scoreboard objectives add S_Farming dummy
scoreboard objectives add S_Mining dummy
scoreboard objectives add S_Combat dummy
scoreboard objectives add S_Foraging dummy
scoreboard objectives add S_Fishing dummy
scoreboard objectives add S_Enchanting dummy
scoreboard objectives add S_Alchemy dummy
scoreboard objectives add S_Carpentry dummy
scoreboard objectives add S_Runecrafting dummy
scoreboard objectives add S_Taming dummy
scoreboard objectives add S_Social dummy

scoreboard objectives add S_FarmingN dummy
scoreboard objectives add S_MiningN dummy
scoreboard objectives add S_CombatN dummy
scoreboard objectives add S_ForagingN dummy
scoreboard objectives add S_FishingN dummy
scoreboard objectives add S_EnchantingN dummy
scoreboard objectives add S_AlchemyN dummy
scoreboard objectives add S_CarpentryN dummy
scoreboard objectives add S_RunecraftingN dummy
scoreboard objectives add S_TamingN dummy
scoreboard objectives add S_SocialN dummy

scoreboard objectives add S_FarmingP dummy
scoreboard objectives add S_MiningP dummy
scoreboard objectives add S_CombatP dummy
scoreboard objectives add S_ForagingP dummy
scoreboard objectives add S_FishingP dummy
scoreboard objectives add S_EnchantingP dummy
scoreboard objectives add S_AlchemyP dummy
scoreboard objectives add S_CarpentryP dummy
scoreboard objectives add S_RunecraftingP dummy
scoreboard objectives add S_TamingP dummy
scoreboard objectives add S_SocialP dummy

scoreboard objectives add S_MaxFarming dummy
scoreboard objectives add S_MaxMining dummy
scoreboard objectives add S_MaxCombat dummy
scoreboard objectives add S_MaxForaging dummy
scoreboard objectives add S_MaxFishing dummy
scoreboard objectives add S_MaxEnchanting dummy
scoreboard objectives add S_MaxAlchemy dummy
scoreboard objectives add S_MaxCarpentry dummy
scoreboard objectives add S_MaxRunecraft dummy
scoreboard objectives add S_MaxTaming dummy
scoreboard objectives add S_MaxSocial dummy

scoreboard objectives add S_FarmingEXP dummy
scoreboard objectives add S_MiningEXP dummy
scoreboard objectives add S_CombatEXP dummy
scoreboard objectives add S_ForagingEXP dummy
scoreboard objectives add S_FishingEXP dummy
scoreboard objectives add S_EnchantingEXP dummy
scoreboard objectives add S_AlchemyEXP dummy
scoreboard objectives add S_CarpentryEXP dummy
scoreboard objectives add S_RunecraftEXP dummy
scoreboard objectives add S_TamingEXP dummy
scoreboard objectives add S_SocialEXP dummy

scoreboard objectives add S_FarmingEXPN dummy
scoreboard objectives add S_MiningEXPN dummy
scoreboard objectives add S_CombatEXPN dummy
scoreboard objectives add S_ForagingEXPN dummy
scoreboard objectives add S_FishingEXPN dummy
scoreboard objectives add S_EnchantingEXPN dummy
scoreboard objectives add S_AlchemyEXPN dummy
scoreboard objectives add S_CarpentryEXPN dummy
scoreboard objectives add S_RunecraftEXPN dummy
scoreboard objectives add S_TamingEXPN dummy
scoreboard objectives add S_SocialEXPN dummy

scoreboard objectives add S_TotalFarmingB dummy
scoreboard objectives add S_TotalMiningB dummy
scoreboard objectives add S_TotalCombatB dummy
scoreboard objectives add S_TotalForagingB dummy
scoreboard objectives add S_TotalFishingB dummy
scoreboard objectives add S_TotalEnchB dummy
scoreboard objectives add S_TotalAlchemyB dummy
scoreboard objectives add S_TotalCarpB dummy
scoreboard objectives add S_TotalRuneB dummy
scoreboard objectives add S_TotalTamingB dummy
scoreboard objectives add S_TotalSocialB dummy
#-----------------FARMING------------------#
scoreboard objectives add B_Wheat minecraft.mined:minecraft.wheat
scoreboard objectives add B_Potato minecraft.mined:minecraft.potatoes
scoreboard objectives add B_Carrot minecraft.mined:minecraft.carrots
scoreboard objectives add B_Cocoa minecraft.mined:minecraft.cocoa
scoreboard objectives add B_Melon minecraft.mined:minecraft.melon
scoreboard objectives add B_Pumpkin minecraft.mined:minecraft.pumpkin
scoreboard objectives add B_Cactus minecraft.mined:minecraft.cactus
scoreboard objectives add B_SugarCane minecraft.mined:minecraft.sugar_cane
scoreboard objectives add B_BrownMushroom minecraft.mined:minecraft.brown_mushroom_block
scoreboard objectives add B_RedMushroom minecraft.mined:minecraft.red_mushroom_block

scoreboard objectives add O_Pumpkin dummy
scoreboard objectives add O_Melon dummy
scoreboard objectives add O_Cactus dummy
scoreboard objectives add O_SugarCane dummy
scoreboard objectives add O_BrownMushroom dummy
scoreboard objectives add O_RedMushroom dummy

scoreboard objectives add U_Pumpkin minecraft.used:minecraft.pumpkin
scoreboard objectives add U_Melon minecraft.used:minecraft.melon
scoreboard objectives add U_Cactus minecraft.used:minecraft.melon
scoreboard objectives add U_SugarCane minecraft.used:minecraft.sugar_cane
scoreboard objectives add U_BrownMushroom minecraft.used:minecraft.brown_mushroom_block
scoreboard objectives add U_RedMushroom minecraft.used:minecraft.red_mushroom_block

scoreboard objectives add GiveAmount dummy
#-----------------FORAGING------------------#
scoreboard objectives add B_OakL minecraft.mined:minecraft.oak_log
scoreboard objectives add B_SpruceL minecraft.mined:minecraft.spruce_log
scoreboard objectives add B_BirchL minecraft.mined:minecraft.birch_log
scoreboard objectives add B_DarkoakL minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add B_AcaciaL minecraft.mined:minecraft.acacia_log
scoreboard objectives add B_JungleL minecraft.mined:minecraft.jungle_log

scoreboard objectives add B_OakW minecraft.mined:minecraft.oak_wood
scoreboard objectives add B_SpruceW minecraft.mined:minecraft.spruce_wood
scoreboard objectives add B_BirchW minecraft.mined:minecraft.birch_wood
scoreboard objectives add B_DarkoakW minecraft.mined:minecraft.dark_oak_wood
scoreboard objectives add B_AcaciaW minecraft.mined:minecraft.acacia_wood
scoreboard objectives add B_JungleW minecraft.mined:minecraft.jungle_wood
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Skills Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#