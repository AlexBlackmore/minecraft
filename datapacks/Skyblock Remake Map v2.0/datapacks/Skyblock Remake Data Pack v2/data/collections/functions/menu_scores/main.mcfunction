#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------COMBAT-------------------#
scoreboard players set @p C_Combat 0
execute if entity @s[scores={C_Rottenflesh=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_Bone=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_String=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_Spidereye=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_Gunpowder=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_Enderpearl=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_Ghasttear=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_Slimeball=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_Blazerod=1..}] run scoreboard players add @p C_Combat 1
execute if entity @s[scores={C_Magmacream=1..}] run scoreboard players add @p C_Combat 1

execute if entity @s[scores={C_Rottenflesh=50000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_Bone=150000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_String=50000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_Spidereye=50000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_Gunpowder=50000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_Enderpearl=50000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_Ghasttear=50000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_Slimeball=50000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_Blazerod=50000..}] run scoreboard players add @p C_Combat_Max 1
execute if entity @s[scores={C_Magmacream=50000..}] run scoreboard players add @p C_Combat_Max 1

scoreboard players operation @p C_CombatP = @p C_Combat
scoreboard players operation @p C_CombatP *= c10 Constant

scoreboard players operation @p C_Combat_MaxP = @p C_Combat_Max
scoreboard players operation @p C_Combat_MaxP *= c10 Constant
#-----------------FARMING------------------#
scoreboard players set @p C_Farming 0
execute if entity @s[scores={C_Wheat=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Carrot=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Potato=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Pumpkin=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Melon=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Seeds=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Mushroom=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Cocoa=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Cactus=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Sugarcane=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Feather=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Leather=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Porkchop=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Chicken=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Mutton=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Rabbit=1..}] run scoreboard players add @p C_Farming 1
execute if entity @s[scores={C_Netherwart=1..}] run scoreboard players add @p C_Farming 1

execute if entity @s[scores={C_Wheat=100000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Carrot=100000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Potato=100000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Pumpkin=250000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Melon=250000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Seeds=5000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Mushroom=50000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Cocoa=100000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Cactus=50000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Sugarcane=50000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Feather=50000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Leather=100000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Porkchop=50000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Chicken=50000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Mutton=50000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Rabbit=50000..}] run scoreboard players add @p C_Farming_Max 1
execute if entity @s[scores={C_Netherwart=250000..}] run scoreboard players add @p C_Farming_Max 1

scoreboard players operation @p C_FarmingP = @p C_Farming
scoreboard players operation @p C_FarmingP *= c100 Constant
scoreboard players operation @p C_FarmingP /= c17 Constant

scoreboard players operation @p C_Farming_MaxP = @p C_Farming_Max
scoreboard players operation @p C_Farming_MaxP *= c100 Constant
scoreboard players operation @p C_Farming_MaxP /= c17 Constant
#-----------------FISHING------------------#
scoreboard players set @p C_Fishing 0
execute if entity @s[scores={C_Cod=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Salmon=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Tropicalfish=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Pufferfish=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Pcrystal=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Pshard=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Clay=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Lilypad=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Inksac=1..}] run scoreboard players add @p C_Fishing 1
execute if entity @s[scores={C_Sponge=1..}] run scoreboard players add @p C_Fishing 1

execute if entity @s[scores={C_Cod=60000..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Salmon=10000..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Tropicalfish=800..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Pufferfish=9000..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Pcrystal=800..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Pshard=200..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Clay=2500..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Lilypad=10000..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Inksac=4000..}] run scoreboard players add @p C_Fishing_Max 1
execute if entity @s[scores={C_Sponge=4000..}] run scoreboard players add @p C_Fishing_Max 1

scoreboard players operation @p C_FishingP = @p C_Fishing
scoreboard players operation @p C_FishingP *= c10 Constant

scoreboard players operation @p C_Fishing_MaxP = @p C_Fishing_Max
scoreboard players operation @p C_Fishing_MaxP *= c10 Constant
#----------------FORAGING------------------#
scoreboard players set @p C_Foraging 0
execute if entity @s[scores={C_Oak=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Spruce=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Birch=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Darkoak=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Acacia=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Jungle=1..}] run scoreboard players add @p C_Foraging 1

execute if entity @s[scores={C_Oak=30000..}] run scoreboard players add @p C_Foraging_Max 1
execute if entity @s[scores={C_Spruce=50000..}] run scoreboard players add @p C_Foraging_Max 1
execute if entity @s[scores={C_Birch=25000..}] run scoreboard players add @p C_Foraging_Max 1
execute if entity @s[scores={C_Darkoak=50000..}] run scoreboard players add @p C_Foraging_Max 1
execute if entity @s[scores={C_Acacia=25000..}] run scoreboard players add @p C_Foraging_Max 1
execute if entity @s[scores={C_Jungle=25000..}] run scoreboard players add @p C_Foraging_Max 1

scoreboard players operation @p C_ForagingP = @p C_Foraging
scoreboard players operation @p C_ForagingP *= c100 Constant
scoreboard players operation @p C_ForagingP /= c6 Constant

scoreboard players operation @p C_Foraging_MaxP = @p C_Foraging_Max
scoreboard players operation @p C_Foraging_MaxP *= c100 Constant
scoreboard players operation @p C_Foraging_MaxP /= c6 Constant
#------------------MINING------------------#
scoreboard players set @p C_Mining 0
scoreboard players set @p C_Mining_Max 0
execute if entity @s[scores={C_Cobblestone=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Coal=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Iron=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Gold=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Diamond=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Lapis=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Emerald=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Redstone=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Quartz=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Obsidian=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Glowstone=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Gravel=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Ice=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Netherrack=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Sand=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Endstone=1..}] run scoreboard players add @p C_Mining 1
execute if entity @s[scores={C_Mithril=1..}] run scoreboard players add @p C_Mining 1

execute if entity @s[scores={C_Cobblestone=70000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Coal=50000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Iron=50000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Gold=50000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Diamond=50000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Lapis=250000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Emerald=100000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Redstone=1200000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Quartz=50000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Obsidian=100000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Glowstone=50000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Gravel=50000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Ice=250000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Netherrack=500..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Sand=5000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Endstone=50000..}] run scoreboard players add @p C_Mining_Max 1
execute if entity @s[scores={C_Mithril=1000000..}] run scoreboard players add @p C_Mining_Max 1

scoreboard players operation @p C_MiningP = @p C_Mining
scoreboard players operation @p C_MiningP *= c100 Constant
scoreboard players operation @p C_MiningP /= c17 Constant

scoreboard players operation @p C_Mining_MaxP = @p C_Mining_Max
scoreboard players operation @p C_Mining_MaxP *= c100 Constant
scoreboard players operation @p C_Mining_MaxP /= c17 Constant
#-----------------TRADES-------------------#
scoreboard players set @p Trades 2
execute if entity @s[scores={C_SeedsL=1..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SeedsL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SeedsL=3..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SeedsL=4..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SeedsL=5..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SeedsL=6..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_OakL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SpruceL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_DarkoakL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_AcaciaL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_BirchL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_JungleL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_JungleL=4..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_BoneL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_MagmacreamL=6..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_EnderpearlL=7..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_MushroomL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_LeatherL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SandL=2..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SandL=3..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_NetherrackL=3..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_TropicalfishL=3..}] run scoreboard players add @p Trades 1
execute if entity @s[scores={C_SpongeL=2..}] run scoreboard players add @p Trades 1

scoreboard players operation @p TradesP = @p Trades
scoreboard players operation @p TradesP *= c100 Constant
scoreboard players operation @p TradesP /= c25 Constant
#------------------TOTAL-------------------#
scoreboard players set @p C_Unlocked 0
scoreboard players operation @p C_Unlocked += @p C_Combat
scoreboard players operation @p C_Unlocked += @p C_Mining
scoreboard players operation @p C_Unlocked += @p C_Farming
scoreboard players operation @p C_Unlocked += @p C_Fishing
scoreboard players operation @p C_Unlocked += @p C_Foraging

scoreboard players operation @p C_UnlockedP = @p C_Unlocked
scoreboard players operation @p C_UnlockedP *= c100 Constant
scoreboard players operation @p C_UnlockedP /= c60 Constant
#------------------------------------------#