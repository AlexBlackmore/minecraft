#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Enchanting SkyblockModules matches 0.. run scoreboard players set Enchanting SkyblockModules 1

#Enchanting Table Book
scoreboard objectives add EB_Anim dummy
scoreboard objectives add EB_AnimBob dummy
scoreboard objectives add EB_Open dummy

#Used for Damage Enchantments
scoreboard objectives add E_BonusDef dummy
scoreboard objectives add E_BowPower dummy
scoreboard objectives add E_BowCubism dummy
scoreboard objectives add E_BowDragHunt dummy
scoreboard objectives add E_BowImpaling dummy
scoreboard objectives add E_BowSnipe dummy
scoreboard objectives add E_BowAiming dummy
scoreboard objectives add E_FireAspectTime dummy
scoreboard objectives add E_FireAspectLVL dummy
scoreboard objectives add E_VenomousTime dummy
scoreboard objectives add E_VenomousLVL dummy
scoreboard objectives add E_ThornsAmount dummy

#Used for Replenish
scoreboard objectives add R_Potato minecraft.mined:minecraft.potatoes
scoreboard objectives add R_Carrot minecraft.mined:minecraft.carrots
scoreboard objectives add R_Beetroot minecraft.mined:minecraft.beetroots
scoreboard objectives add R_Cocoa minecraft.mined:minecraft.cocoa
scoreboard objectives add R_NetherWart minecraft.mined:minecraft.nether_wart
scoreboard objectives add R_Wheat minecraft.mined:minecraft.wheat

#Used for Telekinesis
scoreboard objectives add U_WPick minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add U_SPick minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add U_GPick minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add U_IPick minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add U_DPick minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add U_NPick minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add U_WAxe minecraft.used:minecraft.wooden_axe
scoreboard objectives add U_SAxe minecraft.used:minecraft.stone_axe
scoreboard objectives add U_GAxe minecraft.used:minecraft.golden_axe
scoreboard objectives add U_IAxe minecraft.used:minecraft.iron_axe
scoreboard objectives add U_DAxe minecraft.used:minecraft.diamond_axe
scoreboard objectives add U_NAxe minecraft.used:minecraft.netherite_axe
scoreboard objectives add U_WShovel minecraft.used:minecraft.wooden_shovel
scoreboard objectives add U_SShovel minecraft.used:minecraft.stone_shovel
scoreboard objectives add U_GShovel minecraft.used:minecraft.golden_shovel
scoreboard objectives add U_IShovel minecraft.used:minecraft.iron_shovel
scoreboard objectives add U_DShovel minecraft.used:minecraft.diamond_shovel
scoreboard objectives add U_NShovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add U_WHoe minecraft.used:minecraft.wooden_hoe
scoreboard objectives add U_SHoe minecraft.used:minecraft.stone_hoe
scoreboard objectives add U_GHoe minecraft.used:minecraft.golden_hoe
scoreboard objectives add U_IHoe minecraft.used:minecraft.iron_hoe
scoreboard objectives add U_DHoe minecraft.used:minecraft.diamond_hoe
scoreboard objectives add U_NHoe minecraft.used:minecraft.netherite_hoe
scoreboard objectives add U_Shears dummy

#Other Enchantment Scores
scoreboard objectives add TelekinesisXP dummy
scoreboard objectives add ExperienceXP dummy
scoreboard objectives add ExperienceChan dummy
scoreboard objectives add ThunderlordHits dummy
scoreboard objectives add FrostIceTimer dummy
scoreboard objectives add LuckBonus dummy
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Enchanting Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#