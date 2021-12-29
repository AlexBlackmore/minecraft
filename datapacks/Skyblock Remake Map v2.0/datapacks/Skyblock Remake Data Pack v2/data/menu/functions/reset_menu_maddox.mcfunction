#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute if entity @p[tag=!HasSlayerQuest,tag=!NeedRewards,tag=!QuestFailed] run scoreboard players set @s M_CurrentPage 240
execute if entity @p[tag=!HasSlayerQuest,tag=!NeedRewards,tag=!QuestFailed] run scoreboard players set @s M_PageDelay 1
execute if entity @p[tag=!HasSlayerQuest,tag=!NeedRewards,tag=!QuestFailed] run function menu:menus/maddox/mainpage
execute if entity @p[tag=!HasSlayerQuest,tag=!NeedRewards,tag=!QuestFailed] run scoreboard players remove @s[scores={M_PageDelay=1..}] M_PageDelay 1
execute if entity @p[tag=!HasSlayerQuest,tag=!NeedRewards,tag=!QuestFailed] run function menu:menus/maddox/mainpage

execute if entity @p[tag=HasSlayerQuest] run scoreboard players set @s M_CurrentPage 247
execute if entity @p[tag=HasSlayerQuest] run scoreboard players set @s M_PageDelay 1
execute if entity @p[tag=HasSlayerQuest] run function menu:menus/maddox/already_has_quest
execute if entity @p[tag=HasSlayerQuest] run scoreboard players remove @s[scores={M_PageDelay=1..}] M_PageDelay 1
execute if entity @p[tag=HasSlayerQuest] run function menu:menus/maddox/already_has_quest

execute if entity @p[tag=NeedRewards] run scoreboard players set @s M_CurrentPage 249
execute if entity @p[tag=NeedRewards] run scoreboard players set @s M_PageDelay 1
execute if entity @p[tag=NeedRewards] run function menu:menus/maddox/claim_rewards
execute if entity @p[tag=NeedRewards] run scoreboard players remove @s[scores={M_PageDelay=1..}] M_PageDelay 1
execute if entity @p[tag=NeedRewards] run function menu:menus/maddox/claim_rewards

execute if entity @p[tag=QuestFailed] run scoreboard players set @s M_CurrentPage 264
execute if entity @p[tag=QuestFailed] run scoreboard players set @s M_PageDelay 1
execute if entity @p[tag=QuestFailed] run function menu:menus/maddox/quest_failed
execute if entity @p[tag=QuestFailed] run scoreboard players remove @s[scores={M_PageDelay=1..}] M_PageDelay 1
execute if entity @p[tag=QuestFailed] run function menu:menus/maddox/quest_failed
#------------------------------------------#