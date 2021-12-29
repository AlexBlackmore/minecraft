#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
tag @s remove SlayerSpawned
tag @s remove HasSlayerQuest
tag @s add NeedSlayerJingle
tag @s add NeedRewards
scoreboard players operation $ZHighSlainPre Temp = @s S_ZHighSlain
scoreboard players operation $SHighSlainPre Temp = @s S_SHighSlain
scoreboard players operation $WHighSlainPre Temp = @s S_WHighSlain

execute if score @s S_CQuestType matches 1 if score @s S_CQuestTier matches 1 if score @s S_ZHighSlain matches ..0 run scoreboard players set @s S_ZHighSlain 1
execute if score @s S_CQuestType matches 1 if score @s S_CQuestTier matches 2 if score @s S_ZHighSlain matches ..1 run scoreboard players set @s S_ZHighSlain 2
execute if score @s S_CQuestType matches 1 if score @s S_CQuestTier matches 3 if score @s S_ZHighSlain matches ..2 run scoreboard players set @s S_ZHighSlain 3
execute if score @s S_CQuestType matches 1 if score @s S_CQuestTier matches 4 if score @s S_ZHighSlain matches ..3 run scoreboard players set @s S_ZHighSlain 4

execute if score @s S_CQuestType matches 2 if score @s S_CQuestTier matches 1 if score @s S_SHighSlain matches ..0 run scoreboard players set @s S_SHighSlain 1
execute if score @s S_CQuestType matches 2 if score @s S_CQuestTier matches 2 if score @s S_SHighSlain matches ..1 run scoreboard players set @s S_SHighSlain 2
execute if score @s S_CQuestType matches 2 if score @s S_CQuestTier matches 3 if score @s S_SHighSlain matches ..2 run scoreboard players set @s S_SHighSlain 3
execute if score @s S_CQuestType matches 2 if score @s S_CQuestTier matches 4 if score @s S_SHighSlain matches ..3 run scoreboard players set @s S_SHighSlain 4

execute if score @s S_CQuestType matches 3 if score @s S_CQuestTier matches 1 if score @s S_WHighSlain matches ..0 run scoreboard players set @s S_WHighSlain 1
execute if score @s S_CQuestType matches 3 if score @s S_CQuestTier matches 2 if score @s S_WHighSlain matches ..1 run scoreboard players set @s S_WHighSlain 2
execute if score @s S_CQuestType matches 3 if score @s S_CQuestTier matches 3 if score @s S_WHighSlain matches ..2 run scoreboard players set @s S_WHighSlain 3
execute if score @s S_CQuestType matches 3 if score @s S_CQuestTier matches 4 if score @s S_WHighSlain matches ..3 run scoreboard players set @s S_WHighSlain 4
function slayers:calc_combat_bonus
function slayers:scoreboard/tree
scoreboard players set @s J_RareDrop 13
schedule function slayers:slayer_killed2 14t
