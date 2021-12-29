#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------RESET ISLAND IF ON ONE----------#
execute if entity @s[team=aqua] run function profiling:reset/aqua
execute if entity @s[team=black] run function profiling:reset/black
execute if entity @s[team=blue] run function profiling:reset/blue
execute if entity @s[team=dark_aqua] run function profiling:reset/dark_aqua
execute if entity @s[team=dark_blue] run function profiling:reset/dark_blue
execute if entity @s[team=dark_gray] run function profiling:reset/dark_gray
execute if entity @s[team=dark_green] run function profiling:reset/dark_green
execute if entity @s[team=dark_purple] run function profiling:reset/dark_purple
execute if entity @s[team=dark_red] run function profiling:reset/dark_red
execute if entity @s[team=gold] run function profiling:reset/gold
execute if entity @s[team=gray] run function profiling:reset/gray
execute if entity @s[team=green] run function profiling:reset/green
execute if entity @s[team=light_purple] run function profiling:reset/light_purple
execute if entity @s[team=red] run function profiling:reset/red
execute if entity @s[team=white] run function profiling:reset/white
execute if entity @s[team=yellow] run function profiling:reset/yellow
#---------------PLAYER IDS-----------------#
scoreboard players operation @s PlayerID = Global PlayerID
scoreboard players add Global PlayerID 1
tag @s remove NeedID
#-----------ACCESSORY BAG SLOTS------------#
scoreboard players set @p BaseAccessSlots 0
function menu:accessory_bag/avaliable_slots
#------------------STATS-------------------#
function stats:base_player_stats
function stats:restore_health
#--------------DRAGON RECORDS--------------#
scoreboard players set @s End_RDProtector 0
scoreboard players set @s End_RDOld 0
scoreboard players set @s End_RDWise 0
scoreboard players set @s End_RDUnstable 0
scoreboard players set @s End_RDYoung 0
scoreboard players set @s End_RDStrong 0
scoreboard players set @s End_RDSuperior 0
#------------------SKILLS------------------#
scoreboard players set @s S_Farming 0
scoreboard players set @s S_Mining 0
scoreboard players set @s S_Combat 0
scoreboard players set @s S_Foraging 0
scoreboard players set @s S_Fishing 0
scoreboard players set @s S_Enchanting 0
scoreboard players set @s S_Alchemy 0
scoreboard players set @s S_Carpentry 0
scoreboard players set @s S_Runecrafting 0
scoreboard players set @s S_Taming 0
scoreboard players set @s S_Social 0

scoreboard players set @s S_FarmingN 1
scoreboard players set @s S_MiningN 1
scoreboard players set @s S_CombatN 1
scoreboard players set @s S_ForagingN 1
scoreboard players set @s S_FishingN 1
scoreboard players set @s S_EnchantingN 1
scoreboard players set @s S_AlchemyN 1
scoreboard players set @s S_CarpentryN 1
scoreboard players set @s S_RunecraftingN 1
scoreboard players set @s S_TamingN 1
scoreboard players set @s S_SocialN 1

scoreboard players set @s S_FarmingEXP 0
scoreboard players set @s S_MiningEXP 0
scoreboard players set @s S_CombatEXP 0
scoreboard players set @s S_ForagingEXP 0
scoreboard players set @s S_FishingEXP 0
scoreboard players set @s S_EnchantingEXP 0
scoreboard players set @s S_AlchemyEXP 0
scoreboard players set @s S_CarpentryEXP 0
scoreboard players set @s S_RunecraftEXP 0
scoreboard players set @s S_TamingEXP 0
scoreboard players set @s S_SocialEXP 0

scoreboard players set @s S_FarmingEXPN 50
scoreboard players set @s S_MiningEXPN 50
scoreboard players set @s S_CombatEXPN 50
scoreboard players set @s S_ForagingEXPN 50
scoreboard players set @s S_FishingEXPN 50
scoreboard players set @s S_EnchantingEXPN 50
scoreboard players set @s S_AlchemyEXPN 50
scoreboard players set @s S_CarpentryEXPN 50
scoreboard players set @s S_RunecraftEXPN 50
scoreboard players set @s S_TamingEXPN 50
scoreboard players set @s S_SocialEXPN 50

scoreboard players set @s S_MaxFarming 50
scoreboard players set @s S_MaxMining 50
scoreboard players set @s S_MaxCombat 50
scoreboard players set @s S_MaxForaging 50
scoreboard players set @s S_MaxFishing 50
scoreboard players set @s S_MaxEnchanting 50
scoreboard players set @s S_MaxAlchemy 50
scoreboard players set @s S_MaxCarpentry 50
scoreboard players set @s S_MaxRunecraft 25
scoreboard players set @s S_MaxTaming 50
scoreboard players set @s S_MaxSocial 20
#------------------OTHER-------------------#
tag @s add CheatsEnabled
tag @s add NPC_available

scoreboard players add @a PassiveCooldown 0
scoreboard players set @s Location -1
scoreboard players set @s SubLocation -1

execute in minecraft:overworld run tp @s 106 69 -58 -90 0
gamemode adventure @s
xp set @s 0 levels
xp set @s 0 points
clear @s
team leave @s
#----------------SLAYERS-------------------#
scoreboard players set @s S_ZRecipes 0
scoreboard players set @s S_WRecipes 0
scoreboard players set @s S_SRecipes 0

scoreboard players set @s S_SpiderLvl 0
scoreboard players set @s S_ZombieLvl 0
scoreboard players set @s S_WolfLvl 0

scoreboard players set @s S_ZombieEXP 0
scoreboard players set @s S_SpiderEXP 0
scoreboard players set @s S_WolfEXP 0

scoreboard players set @s S_ZombieEXPN 5
scoreboard players set @s S_SpiderEXPN 5
scoreboard players set @s S_WolfEXPN 5

scoreboard players set @s S_ZHighSlain 0
scoreboard players set @s S_SHighSlain 0
scoreboard players set @s S_WHighSlain 0
execute if score SlayerRequirements Setting matches 0 run function cheats:settings/resources/store_slayer_levels

scoreboard players set @s S_SlayerCmbtB 0
#----------------MESSAGES------------------#
function skyblock:view_credits
tellraw @s ["",{"text":" WELCOME BACK TO THE HYPIXEL SKYBLOCK REMAKE! ","color":"red","bold":true,"underlined":true}]
tellraw @s ["",{"text":"To begin, choose the island you'd like to join by clicking its button or using the menu in your 9th item slot!","color":"white"}]
#------------------------------------------#
