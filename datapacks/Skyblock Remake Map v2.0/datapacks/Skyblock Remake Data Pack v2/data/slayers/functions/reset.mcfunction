#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Slayers SkyblockModules matches 0.. run scoreboard players set Slayers SkyblockModules 1

scoreboard objectives add S_ZombieLvl dummy
scoreboard objectives add S_SpiderLvl dummy
scoreboard objectives add S_WolfLvl dummy
scoreboard objectives add S_ZombieLvlEXP dummy
scoreboard objectives add S_SpiderLvlEXP dummy
scoreboard objectives add S_WolfLvlEXP dummy
scoreboard objectives add S_ZombieLvlEXPN dummy
scoreboard objectives add S_SpiderLvlEXPN dummy
scoreboard objectives add S_WolfLvlEXPN dummy

scoreboard objectives add S_XPToSpawn dummy
scoreboard objectives add S_CQuestEXP dummy
scoreboard objectives add S_ZNeededExp dummy
scoreboard objectives add S_SNeededExp dummy
scoreboard objectives add S_WNeededExp dummy
scoreboard objectives add S_AnimTimer dummy
scoreboard objectives add S_CQuestTier dummy

scoreboard players set ZombieTier_1 S_XPToSpawn 120
scoreboard players set ZombieTier_2 S_XPToSpawn 1400
scoreboard players set ZombieTier_3 S_XPToSpawn 2400
scoreboard players set ZombieTier_4 S_XPToSpawn 4800

scoreboard players set SpiderTier_1 S_XPToSpawn 250
scoreboard players set SpiderTier_2 S_XPToSpawn 600
scoreboard players set SpiderTier_3 S_XPToSpawn 1000
scoreboard players set SpiderTier_4 S_XPToSpawn 2000

scoreboard players set WolfTier_1 S_XPToSpawn 250
scoreboard players set WolfTier_2 S_XPToSpawn 600
scoreboard players set WolfTier_3 S_XPToSpawn 1500
scoreboard players set WolfTier_4 S_XPToSpawn 3000

scoreboard objectives add S_NoLoop dummy

scoreboard objectives add S_ZInfos dummy
scoreboard objectives add S_SInfos dummy
scoreboard objectives add S_WInfos dummy
scoreboard objectives add S_RInfos dummy

execute unless score Tier1Cost S_ZInfos matches 1.. run scoreboard players set Tier1Cost S_ZInfos 100
execute unless score Tier1Health S_ZInfos matches 1.. run scoreboard players set Tier1Health S_ZInfos 500
execute unless score Tier1Dps S_ZInfos matches 1.. run scoreboard players set Tier1Dps S_ZInfos 15
execute unless score Tier1XPReward S_ZInfos matches 1.. run scoreboard players set Tier1XPReward S_ZInfos 5

execute unless score Tier2Cost S_ZInfos matches 1.. run scoreboard players set Tier2Cost S_ZInfos 2000
execute unless score Tier2Health S_ZInfos matches 1.. run scoreboard players set Tier2Health S_ZInfos 20000
execute unless score Tier2Dps S_ZInfos matches 1.. run scoreboard players set Tier2Dps S_ZInfos 50
execute unless score Tier2XPReward S_ZInfos matches 1.. run scoreboard players set Tier2XPReward S_ZInfos 25

execute unless score Tier3Cost S_ZInfos matches 1.. run scoreboard players set Tier3Cost S_ZInfos 10000
execute unless score Tier3Health S_ZInfos matches 1.. run scoreboard players set Tier3Health S_ZInfos 400000
execute unless score Tier3Dps S_ZInfos matches 1.. run scoreboard players set Tier3Dps S_ZInfos 300
execute unless score Tier3XPReward S_ZInfos matches 1.. run scoreboard players set Tier3XPReward S_ZInfos 100

execute unless score Tier4Cost S_ZInfos matches 1.. run scoreboard players set Tier4Cost S_ZInfos 50000
execute unless score Tier4Health S_ZInfos matches 1.. run scoreboard players set Tier4Health S_ZInfos 1500000
execute unless score Tier4Dps S_ZInfos matches 1.. run scoreboard players set Tier4Dps S_ZInfos 1000
execute unless score Tier4XPReward S_ZInfos matches 1.. run scoreboard players set Tier4XPReward S_ZInfos 500

execute unless score Tier1Cost S_SInfos matches 1.. run scoreboard players set Tier1Cost S_SInfos 100
execute unless score Tier1Health S_SInfos matches 1.. run scoreboard players set Tier1Health S_SInfos 750
execute unless score Tier1Dps S_SInfos matches 1.. run scoreboard players set Tier1Dps S_SInfos 35
execute unless score Tier1XPReward S_SInfos matches 1.. run scoreboard players set Tier1XPReward S_SInfos 5

execute unless score Tier2Cost S_SInfos matches 1.. run scoreboard players set Tier2Cost S_SInfos 2000
execute unless score Tier2Health S_SInfos matches 1.. run scoreboard players set Tier2Health S_SInfos 30000
execute unless score Tier2Dps S_SInfos matches 1.. run scoreboard players set Tier2Dps S_SInfos 110
execute unless score Tier2XPReward S_SInfos matches 1.. run scoreboard players set Tier2XPReward S_SInfos 25

execute unless score Tier3Cost S_SInfos matches 1.. run scoreboard players set Tier3Cost S_SInfos 10000
execute unless score Tier3Health S_SInfos matches 1.. run scoreboard players set Tier3Health S_SInfos 900000
execute unless score Tier3Dps S_SInfos matches 1.. run scoreboard players set Tier3Dps S_SInfos 525
execute unless score Tier3XPReward S_SInfos matches 1.. run scoreboard players set Tier3XPReward S_SInfos 100

execute unless score Tier4Cost S_SInfos matches 1.. run scoreboard players set Tier4Cost S_SInfos 50000
execute unless score Tier4Health S_SInfos matches 1.. run scoreboard players set Tier4Health S_SInfos 2400000
execute unless score Tier4Dps S_SInfos matches 1.. run scoreboard players set Tier4Dps S_SInfos 1325
execute unless score Tier4XPReward S_SInfos matches 1.. run scoreboard players set Tier4XPReward S_SInfos 500

execute unless score Tier4Cost S_RInfos matches 1.. run scoreboard players set Tier4Cost S_RInfos 60000
execute unless score Tier4XPReward S_RInfos matches 1.. run scoreboard players set Tier4XPReward S_RInfos 600

execute unless score Tier3Cost S_RInfos matches 1.. run scoreboard players set Tier3Cost S_RInfos 12000
execute unless score Tier3XPReward S_RInfos matches 1.. run scoreboard players set Tier3XPReward S_RInfos 125

scoreboard objectives add 4TempXPReward dummy
scoreboard objectives add 4TempHealth dummy
scoreboard objectives add 4TempDps dummy
scoreboard objectives add 4TempCost dummy
scoreboard objectives add 4TempTDps dummy
scoreboard objectives add 4TempBeforeComma dummy
scoreboard objectives add 4TempComma dummy
scoreboard objectives add 4TempComma2 dummy
scoreboard objectives add 4HTempBefComma dummy
scoreboard objectives add 4HTempComma dummy
scoreboard objectives add 4HTempComma2 dummy
scoreboard objectives add 4DTempBefComma dummy
scoreboard objectives add 4DTempComma dummy
scoreboard objectives add 4DTempComma2 dummy
scoreboard objectives add 4CTempBefComma dummy
scoreboard objectives add 4CTempComma dummy
scoreboard objectives add 4CTempComma2 dummy
scoreboard objectives add 4TDTempBefComma dummy
scoreboard objectives add 4TDTempComma dummy
scoreboard objectives add 4TDTempComma2 dummy

scoreboard objectives add 3TempXPReward dummy
scoreboard objectives add 3TempHealth dummy
scoreboard objectives add 3TempDps dummy
scoreboard objectives add 3TempCost dummy
scoreboard objectives add 3TempTDps dummy
scoreboard objectives add 3TempBeforeComma dummy
scoreboard objectives add 3TempComma dummy
scoreboard objectives add 3TempComma2 dummy
scoreboard objectives add 3HTempBefComma dummy
scoreboard objectives add 3HTempComma dummy
scoreboard objectives add 3HTempComma2 dummy
scoreboard objectives add 3DTempBefComma dummy
scoreboard objectives add 3DTempComma dummy
scoreboard objectives add 3DTempComma2 dummy
scoreboard objectives add 3CTempBefComma dummy
scoreboard objectives add 3CTempComma dummy
scoreboard objectives add 3CTempComma2 dummy
scoreboard objectives add 3TDTempBefComma dummy
scoreboard objectives add 3TDTempComma dummy
scoreboard objectives add 3TDTempComma2 dummy

scoreboard objectives add 2TempXPReward dummy
scoreboard objectives add 2TempTDps dummy
scoreboard objectives add 2TempHealth dummy
scoreboard objectives add 2TempDps dummy
scoreboard objectives add 2TempCost dummy
scoreboard objectives add 2TempBeforeComma dummy
scoreboard objectives add 2TempComma dummy
scoreboard objectives add 2TempComma2 dummy
scoreboard objectives add 2HTempBefComma dummy
scoreboard objectives add 2HTempComma dummy
scoreboard objectives add 2HTempComma2 dummy
scoreboard objectives add 2DTempBefComma dummy
scoreboard objectives add 2DTempComma dummy
scoreboard objectives add 2DTempComma2 dummy
scoreboard objectives add 2CTempBefComma dummy
scoreboard objectives add 2CTempComma dummy
scoreboard objectives add 2CTempComma2 dummy
scoreboard objectives add 2TDTempBefComma dummy
scoreboard objectives add 2TDTempComma dummy
scoreboard objectives add 2TDTempComma2 dummy

scoreboard objectives add 1TempXPReward dummy
scoreboard objectives add 1TempHealth dummy
scoreboard objectives add 1TempDps dummy
scoreboard objectives add 1TempCost dummy
scoreboard objectives add 1TempBeforeComma dummy
scoreboard objectives add 1TempComma dummy
scoreboard objectives add 1TempComma2 dummy
scoreboard objectives add 1HTempBefComma dummy
scoreboard objectives add 1HTempComma dummy
scoreboard objectives add 1HTempComma2 dummy
scoreboard objectives add 1DTempBefComma dummy
scoreboard objectives add 1DTempComma dummy
scoreboard objectives add 1DTempComma2 dummy
scoreboard objectives add 1CTempBefComma dummy
scoreboard objectives add 1CTempComma dummy
scoreboard objectives add 1CTempComma2 dummy

scoreboard objectives add S_CQuestType dummy
scoreboard objectives add J_SlayerKilled dummy

scoreboard objectives add I_SlayerTime dummy
scoreboard objectives add I_SlayerTimeSec dummy
scoreboard objectives add I_SlayerTimeMin dummy

scoreboard objectives add S_NLvlPercent dummy

scoreboard objectives add I_WhassupTimer dummy
scoreboard objectives add I_WhassupTimer2 dummy
scoreboard objectives add S_ParticleTimer dummy

scoreboard objectives add S_TimeSinceHit dummy

scoreboard objectives add S_ZHighSlain dummy
scoreboard objectives add S_SHighSlain dummy
scoreboard objectives add S_WHighSlain dummy
scoreboard objectives add S_SlayerCmbtB dummy

scoreboard objectives add S_ZombieEXP dummy
scoreboard objectives add S_SpiderEXP dummy
scoreboard objectives add S_WolfEXP dummy
scoreboard objectives add S_ZombieEXPN dummy
scoreboard objectives add S_SpiderEXPN dummy
scoreboard objectives add S_WolfEXPN dummy

scoreboard objectives add S_PupCounter dummy
scoreboard objectives add S_SvenPupTimer dummy

scoreboard objectives add S_RevLifeSteal dummy
scoreboard objectives add S_ShredArmorCd dummy
scoreboard objectives add S_PestilTimer dummy
scoreboard objectives add S_EnrageTimer dummy
scoreboard objectives add S_ShredDef dummy
scoreboard objectives add S_BefShredDef dummy
scoreboard objectives add S_BefEnrage dummy

scoreboard objectives add S_BefJump dummy
scoreboard objectives add S_BefAggro dummy
scoreboard objectives add S_NoxiousTimer dummy
scoreboard objectives add S_NoxiousCd dummy
scoreboard objectives add S_HealingRedu dummy

scoreboard objectives add S_ZRecipes dummy
scoreboard objectives add S_SRecipes dummy
scoreboard objectives add S_WRecipes dummy

scoreboard objectives add S_SinceStart dummy
scoreboard objectives add S_TimeToKill dummy
scoreboard objectives add S_TimeToSpawn dummy

scoreboard objectives add Tier1Test dummy
scoreboard objectives add Tier2Test dummy
scoreboard objectives add Tier3Test dummy
scoreboard objectives add Tier4Test dummy

scoreboard objectives add S_KillAmount dummy
scoreboard objectives add S_Kills dummy

#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Slayers Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#