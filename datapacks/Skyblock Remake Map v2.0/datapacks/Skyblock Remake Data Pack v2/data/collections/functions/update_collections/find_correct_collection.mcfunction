#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
execute if entity @s[scores={C_Wheat=1..}] run function collections:update_collections/farming/wheat/find_correct_team
execute if entity @s[scores={C_Carrot=1..}] run function collections:update_collections/farming/carrot/find_correct_team
execute if entity @s[scores={C_Potato=1..}] run function collections:update_collections/farming/potato/find_correct_team
execute if entity @s[scores={C_Pumpkin=1..}] run function collections:update_collections/farming/pumpkin/find_correct_team
execute if entity @s[scores={C_Melon=1..}] run function collections:update_collections/farming/melon/find_correct_team
execute if entity @s[scores={C_Seeds=1..}] run function collections:update_collections/farming/seeds/find_correct_team
execute if entity @s[scores={C_Mushroom=1..}] run function collections:update_collections/farming/mushroom/find_correct_team
execute if entity @s[scores={C_BMushroom=1..}] run function collections:update_collections/farming/mushroom/find_correct_team
execute if entity @s[scores={C_Cocoa=1..}] run function collections:update_collections/farming/cocoa/find_correct_team
execute if entity @s[scores={C_Cactus=1..}] run function collections:update_collections/farming/cactus/find_correct_team
execute if entity @s[scores={C_Sugarcane=1..}] run function collections:update_collections/farming/sugar_cane/find_correct_team
execute if entity @s[scores={C_Feather=1..}] run function collections:update_collections/farming/feather/find_correct_team
execute if entity @s[scores={C_Leather=1..}] run function collections:update_collections/farming/leather/find_correct_team
execute if entity @s[scores={C_Porkchop=1..}] run function collections:update_collections/farming/porkchop/find_correct_team
execute if entity @s[scores={C_Chicken=1..}] run function collections:update_collections/farming/chicken/find_correct_team
execute if entity @s[scores={C_Mutton=1..}] run function collections:update_collections/farming/mutton/find_correct_team
execute if entity @s[scores={C_Rabbit=1..}] run function collections:update_collections/farming/rabbit/find_correct_team
execute if entity @s[scores={C_Netherwart=1..}] run function collections:update_collections/farming/nether_wart/find_correct_team
execute if entity @s[scores={C_Cobblestone=1..}] run function collections:update_collections/mining/cobblestone/find_correct_team
execute if entity @s[scores={C_Coal=1..}] run function collections:update_collections/mining/coal/find_correct_team
execute if entity @s[scores={C_Iron=1..}] run function collections:update_collections/mining/iron/find_correct_team
execute if entity @s[scores={C_Gold=1..}] run function collections:update_collections/mining/gold/find_correct_team
execute if entity @s[scores={C_Diamond=1..}] run function collections:update_collections/mining/diamond/find_correct_team
execute if entity @s[scores={C_Lapis=1..}] run function collections:update_collections/mining/lapis/find_correct_team
execute if entity @s[scores={C_Emerald=1..}] run function collections:update_collections/mining/emerald/find_correct_team
execute if entity @s[scores={C_Redstone=1..}] run function collections:update_collections/mining/redstone/find_correct_team
execute if entity @s[scores={C_Quartz=1..}] run function collections:update_collections/mining/quartz/find_correct_team
execute if entity @s[scores={C_Obsidian=1..}] run function collections:update_collections/mining/obsidian/find_correct_team
execute if entity @s[scores={C_Glowstone=1..}] run function collections:update_collections/mining/glowstone/find_correct_team
execute if entity @s[scores={C_Gravel=1..}] run function collections:update_collections/mining/gravel/find_correct_team
execute if entity @s[scores={C_Ice=1..}] run function collections:update_collections/mining/ice/find_correct_team
execute if entity @s[scores={C_Netherrack=1..}] run function collections:update_collections/mining/netherrack/find_correct_team
execute if entity @s[scores={C_Sand=1..}] run function collections:update_collections/mining/sand/find_correct_team
execute if entity @s[scores={C_Endstone=1..}] run function collections:update_collections/mining/end_stone/find_correct_team
execute if data storage blue:item item.mithril if entity @s[scores={C_Mithril=1..}] run function collections:update_collections/mining/mithril/find_correct_team
execute if entity @s[scores={C_Rottenflesh=1..}] run function collections:update_collections/combat/rotten_flesh/find_correct_team
execute if entity @s[scores={C_Bone=1..}] run function collections:update_collections/combat/bone/find_correct_team
execute if entity @s[scores={C_String=1..}] run function collections:update_collections/combat/string/find_correct_team
execute if entity @s[scores={C_Spidereye=1..}] run function collections:update_collections/combat/spider_eye/find_correct_team
execute if entity @s[scores={C_Gunpowder=1..}] run function collections:update_collections/combat/gunpowder/find_correct_team
execute if entity @s[scores={C_Enderpearl=1..}] run function collections:update_collections/combat/ender_pearl/find_correct_team
execute if entity @s[scores={C_Ghasttear=1..}] run function collections:update_collections/combat/ghast_tear/find_correct_team
execute if entity @s[scores={C_Slimeball=1..}] run function collections:update_collections/combat/slime_ball/find_correct_team
execute if entity @s[scores={C_Blazerod=1..}] run function collections:update_collections/combat/blaze_rod/find_correct_team
execute if entity @s[scores={C_Magmacream=1..}] run function collections:update_collections/combat/magma_cream/find_correct_team
execute if entity @s[scores={C_Oak=1..}] run function collections:update_collections/foraging/oak/find_correct_team
execute if entity @s[scores={C_Spruce=1..}] run function collections:update_collections/foraging/spruce/find_correct_team
execute if entity @s[scores={C_Birch=1..}] run function collections:update_collections/foraging/birch/find_correct_team
execute if entity @s[scores={C_Darkoak=1..}] run function collections:update_collections/foraging/dark_oak/find_correct_team
execute if entity @s[scores={C_Acacia=1..}] run function collections:update_collections/foraging/acacia/find_correct_team
execute if entity @s[scores={C_Jungle=1..}] run function collections:update_collections/foraging/jungle/find_correct_team
execute if entity @s[scores={C_OakWood=1..}] run function collections:update_collections/foraging/oak/find_correct_team
execute if entity @s[scores={C_SpruceWood=1..}] run function collections:update_collections/foraging/spruce/find_correct_team
execute if entity @s[scores={C_BirchWood=1..}] run function collections:update_collections/foraging/birch/find_correct_team
execute if entity @s[scores={C_DarkoakWood=1..}] run function collections:update_collections/foraging/dark_oak/find_correct_team
execute if entity @s[scores={C_AcaciaWood=1..}] run function collections:update_collections/foraging/acacia/find_correct_team
execute if entity @s[scores={C_JungleWood=1..}] run function collections:update_collections/foraging/jungle/find_correct_team
execute if entity @s[scores={C_Cod=1..}] run function collections:update_collections/fishing/cod/find_correct_team
execute if entity @s[scores={C_Salmon=1..}] run function collections:update_collections/fishing/salmon/find_correct_team
execute if entity @s[scores={C_Tropicalfish=1..}] run function collections:update_collections/fishing/tropical_fish/find_correct_team
execute if entity @s[scores={C_Pufferfish=1..}] run function collections:update_collections/fishing/pufferfish/find_correct_team
execute unless data storage blue:item item.mithril if entity @s[scores={C_Pcrystal=1..}] run function collections:update_collections/fishing/p_crystal/find_correct_team
execute if entity @s[scores={C_Pshard=1..}] run function collections:update_collections/fishing/p_shard/find_correct_team
execute if entity @s[scores={C_Clay=1..}] run function collections:update_collections/fishing/clay/find_correct_team
execute if entity @s[scores={C_Lilypad=1..}] run function collections:update_collections/fishing/lilypad/find_correct_team
execute if entity @s[scores={C_Inksac=1..}] run function collections:update_collections/fishing/ink_sac/find_correct_team
execute if entity @s[scores={C_Sponge=1..}] run function collections:update_collections/fishing/sponge/find_correct_team
#------------------------------------------#