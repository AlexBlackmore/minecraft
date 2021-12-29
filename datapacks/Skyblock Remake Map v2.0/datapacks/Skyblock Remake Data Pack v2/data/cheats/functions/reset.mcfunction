#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Cheats SkyblockModules matches 0.. run scoreboard players set Cheats SkyblockModules 1

scoreboard objectives add ChangeTeam trigger
scoreboard objectives add TeleportBook trigger
#----------------SETTINGS------------------#
scoreboard objectives add StoredEXP dummy
scoreboard objectives add StoredSHighSlain dummy
scoreboard objectives add StoredZHighSlain dummy
scoreboard objectives add StoredWHighSlain dummy
scoreboard objectives add CustomEnchReturn dummy
scoreboard objectives add CustomEnchPage dummy
scoreboard objectives add CustomEnchLevel dummy
scoreboard objectives add Setting dummy

execute unless score ShowAnvilUses Setting matches 0.. run scoreboard players set ShowAnvilUses Setting 0
execute unless score CapEnchantLevels Setting matches 0.. run scoreboard players set CapEnchantLevels Setting 1
execute unless score SpecialZealotChances Setting matches 0.. run scoreboard players set SpecialZealotChances Setting 1
execute unless score SuperiorDragChances Setting matches 0.. run scoreboard players set SuperiorDragChances Setting 4
execute unless score DragonDamageMultiplier Setting matches 0.. run scoreboard players set DragonDamageMultiplier Setting 50
execute unless score UnlimitedMana Setting matches 0.. run scoreboard players set UnlimitedMana Setting 0
execute unless score UnlimitedMoney Setting matches 0.. run scoreboard players set UnlimitedMoney Setting 0
execute unless score UnlimitedEXP Setting matches 0.. run scoreboard players set UnlimitedEXP Setting 0
execute unless score AutoFairySoulStats Setting matches 0.. run scoreboard players set AutoFairySoulStats Setting 0
execute unless score BonusAccessorySlots Setting matches 0.. run scoreboard players set BonusAccessorySlots Setting 0
execute unless score InfiniteBuilderWand Setting matches 0.. run scoreboard players set InfiniteBuilderWand Setting 0
execute unless score SlayerBossesAbilities Setting matches 0.. run scoreboard players set SlayerBossesAbilities Setting 1
execute unless score SlayerRequirements Setting matches 0.. run scoreboard players set SlayerRequirements Setting 1
execute unless score OldStrength Setting matches 0.. run scoreboard players set OldStrength Setting 0
execute unless score CooldownsEnabled Setting matches 0.. run scoreboard players set CooldownsEnabled Setting 1
execute unless score PotatoBookLimit Setting matches 0.. run scoreboard players set PotatoBookLimit Setting 1
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Cheats Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#