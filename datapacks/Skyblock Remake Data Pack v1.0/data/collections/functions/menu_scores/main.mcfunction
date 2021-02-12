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

scoreboard players operation @p C_CombatP = @p C_Combat
scoreboard players operation @p C_CombatP *= c10 Constant
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

scoreboard players operation @p C_FarmingP = @p C_Farming
scoreboard players operation @p C_FarmingP *= c100 Constant
scoreboard players operation @p C_FarmingP /= c17 Constant
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

scoreboard players operation @p C_FishingP = @p C_Fishing
scoreboard players operation @p C_FishingP *= c10 Constant
#----------------FORAGING------------------#
scoreboard players set @p C_Foraging 0
execute if entity @s[scores={C_Oak=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Spruce=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Birch=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Darkoak=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Acacia=1..}] run scoreboard players add @p C_Foraging 1
execute if entity @s[scores={C_Jungle=1..}] run scoreboard players add @p C_Foraging 1

scoreboard players operation @p C_ForagingP = @p C_Foraging
scoreboard players operation @p C_ForagingP *= c100 Constant
scoreboard players operation @p C_ForagingP /= c6 Constant
#------------------MINING------------------#
scoreboard players set @p C_Mining 0
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

scoreboard players operation @p C_MiningP = @p C_Mining
scoreboard players operation @p C_MiningP *= c100 Constant
scoreboard players operation @p C_MiningP /= c16 Constant
#------------------TOTAL-------------------#
scoreboard players set @p C_Unlocked 0
scoreboard players operation @p C_Unlocked += @p C_Combat
scoreboard players operation @p C_Unlocked += @p C_Mining
scoreboard players operation @p C_Unlocked += @p C_Farming
scoreboard players operation @p C_Unlocked += @p C_Fishing
scoreboard players operation @p C_Unlocked += @p C_Foraging

scoreboard players operation @p C_UnlockedP = @p C_Unlocked
scoreboard players operation @p C_UnlockedP *= c100 Constant
scoreboard players operation @p C_UnlockedP /= c59 Constant
#------------------------------------------#