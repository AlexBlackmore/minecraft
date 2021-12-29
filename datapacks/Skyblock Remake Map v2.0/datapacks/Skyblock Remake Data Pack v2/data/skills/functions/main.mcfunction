#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ADD EXP------------------#
execute as @a if score @s AddFarming matches 1.. run function skills:farming/add_xp
execute as @a if score @s AddMining matches 1.. run function skills:mining/add_xp
execute as @a if score @s AddCombat matches 1.. run function skills:combat/add_xp
execute as @a if score @s AddForaging matches 1.. run function skills:foraging/add_xp
execute as @a if score @s AddFishing matches 1.. run function skills:fishing/add_xp
execute as @a if score @s AddEnchanting matches 1.. run function skills:enchanting/add_xp
execute as @a if score @s AddAlchemy matches 1.. run function skills:alchemy/add_xp
execute as @a if score @s AddCarpentry matches 1.. run function skills:carpentry/add_xp
execute as @a if score @s AddRunecraft matches 1.. run function skills:runecrafting/add_xp
execute as @a if score @s AddTaming matches 1.. run function skills:taming/add_xp
execute as @a if score @s AddSocial matches 1.. run function skills:social/add_xp
#-----------------LEVEL UP-----------------#
execute as @a if score @s S_Farming < @s S_MaxFarming if score @s S_FarmingEXP >= @s S_FarmingEXPN run function skills:farming/level_up
execute as @a if score @s S_Mining < @s S_MaxMining if score @s S_MiningEXP >= @s S_MiningEXPN run function skills:mining/level_up
execute as @a if score @s S_Combat < @s S_MaxCombat if score @s S_CombatEXP >= @s S_CombatEXPN run function skills:combat/level_up
execute as @a if score @s S_Foraging < @s S_MaxForaging if score @s S_ForagingEXP >= @s S_ForgagingEXPN run function skills:foraging/level_up
execute as @a if score @s S_Fishing < @s S_MaxFishing if score @s S_FishingEXP >= @s S_FishingEXPN run function skills:fishing/level_up
execute as @a if score @s S_Enchanting < @s S_MaxEnchanting if score @s S_EnchantingEXP >= @s S_EnchantingEXPN run function skills:enchanting/level_up
execute as @a if score @s S_Alchemy < @s S_MaxAlchemy if score @s S_AlchemyEXP >= @s S_AlchemyEXPN run function skills:alchemy/level_up
execute as @a if score @s S_Carpentry < @s S_MaxCarpentry if score @s S_CarpentryEXP >= @s S_CarpentryEXPN run function skills:carpentry/level_up
execute as @a if score @s S_Runecrafting < @s S_MaxRunecraft if score @s S_RunecraftEXP >= @s S_RunecraftEXPN run function skills:runecrafting/level_up
execute as @a if score @s S_Taming < @s S_MaxTaming if score @s S_TamingEXP >= @s S_TamingEXPN run function skills:taming/level_up
execute as @a if score @s S_Social < @s S_MaxSocial if score @s S_SocialEXP >= @s S_SocialEXPN run function skills:social/level_up
#-----------------FARMING------------------#
#If in private island, village, farm, barn or mushroom desert
execute as @a[scores={SubLocation=-1}] at @s run function skills:farming/main
execute as @a[scores={SubLocation=1}] at @s run function skills:farming/main
execute as @a[scores={SubLocation=19}] at @s run function skills:farming/main
execute as @a[scores={SubLocation=23..24}] at @s run function skills:farming/main
#-----------------FORAGING-----------------#
execute as @a at @s unless entity @e[type=area_effect_cloud,tag=OakTree,distance=..13] if data entity @s {SelectedItem:{tag:{CanDestroy:["minecraft:oak_log"]}}} run function public_islands:map_regeneration/forage/remove_tag

execute as @a unless score @s Location matches 5 if data entity @s {SelectedItem:{tag:{CanDestroy:["minecraft:birch_log"]}}} run function public_islands:map_regeneration/remove_tag_park
execute as @a[scores={SubLocation=-1}] at @s run function skills:foraging/main
execute as @a[scores={SubLocation=6}] at @s run function skills:foraging/main
execute as @a[scores={SubLocation=25}] at @s run function skills:foraging/main
execute as @a[scores={SubLocation=30..33}] at @s run function skills:foraging/main
#------------------MINING------------------#
execute as @a run function skills:mining/main
#------------------------------------------#