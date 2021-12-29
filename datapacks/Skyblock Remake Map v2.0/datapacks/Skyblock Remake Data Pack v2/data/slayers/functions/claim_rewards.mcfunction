#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 1 if score @s S_CQuestTier matches 1 run scoreboard players operation @s S_ZombieEXP += Tier1XPReward S_ZInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 1 if score @s S_CQuestTier matches 2 run scoreboard players operation @s S_ZombieEXP += Tier2XPReward S_ZInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 1 if score @s S_CQuestTier matches 3 run scoreboard players operation @s S_ZombieEXP += Tier3XPReward S_ZInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 1 if score @s S_CQuestTier matches 4 run scoreboard players operation @s S_ZombieEXP += Tier4XPReward S_ZInfos

execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 2 if score @s S_CQuestTier matches 1 run scoreboard players operation @s S_SpiderEXP += Tier1XPReward S_SInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 2 if score @s S_CQuestTier matches 2 run scoreboard players operation @s S_SpiderEXP += Tier2XPReward S_SInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 2 if score @s S_CQuestTier matches 3 run scoreboard players operation @s S_SpiderEXP += Tier3XPReward S_SInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 2 if score @s S_CQuestTier matches 4 run scoreboard players operation @s S_SpiderEXP += Tier4XPReward S_SInfos

execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 3 if score @s S_CQuestTier matches 1 run scoreboard players operation @s S_WolfEXP += Tier1XPReward S_WInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 3 if score @s S_CQuestTier matches 2 run scoreboard players operation @s S_WolfEXP += Tier2XPReward S_WInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 3 if score @s S_CQuestTier matches 3 run scoreboard players operation @s S_WolfEXP += Tier3XPReward S_WInfos
execute if score @s[tag=!RandomSlayerQuest] S_CQuestType matches 3 if score @s S_CQuestTier matches 4 run scoreboard players operation @s S_WolfEXP += Tier4XPReward S_WInfos

execute if score @s[tag=RandomSlayerQuest] S_CQuestType matches 1 if score @s S_CQuestTier matches 3 run scoreboard players operation @s S_ZombieEXP += Tier3XPReward S_RInfos
execute if score @s[tag=RandomSlayerQuest] S_CQuestType matches 1 if score @s S_CQuestTier matches 4 run scoreboard players operation @s S_ZombieEXP += Tier4XPReward S_RInfos

execute if score @s[tag=RandomSlayerQuest] S_CQuestType matches 2 if score @s S_CQuestTier matches 3 run scoreboard players operation @s S_SpiderEXP += Tier3XPReward S_RInfos
execute if score @s[tag=RandomSlayerQuest] S_CQuestType matches 2 if score @s S_CQuestTier matches 4 run scoreboard players operation @s S_SpiderEXP += Tier4XPReward S_RInfos

execute if score @s[tag=RandomSlayerQuest] S_CQuestType matches 3 if score @s S_CQuestTier matches 3 run scoreboard players operation @s S_WolfEXP += Tier3XPReward S_RInfos
execute if score @s[tag=RandomSlayerQuest] S_CQuestType matches 3 if score @s S_CQuestTier matches 4 run scoreboard players operation @s S_WolfEXP += Tier4XPReward S_RInfos

scoreboard players set @s S_TimeToKill 0
scoreboard players set @s S_TimeToSpawn 0
scoreboard players set @s S_SinceStart 0

function slayers:calc_next_exp

function slayers:calc_remaining_exp

function slayers:level_ups

playsound entity.player.levelup player @s ~ ~ ~ 1 1.5 1

scoreboard players set @e[tag=NPCMenu,sort=nearest,limit=1] M_NewPage 240

function slayers:scoreboard/remove_stats

tag @s remove NeedRewards
tag @s remove RandomSlayerQuest
tag @s remove Spawning