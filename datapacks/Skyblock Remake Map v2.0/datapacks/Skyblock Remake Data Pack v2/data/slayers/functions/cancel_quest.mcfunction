#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CANCEL QUEST---------------#
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 2 1
tellraw @s {"text":"Your Slayer Quest has been cancelled!","color":"green"}
tag @s remove HasSlayerQuest
tag @s remove RandomSlayerQuest
tag @s remove QuestFailed
scoreboard players set @s S_CQuestEXP 0
scoreboard players set @s S_CQuestTier 0
scoreboard players set @s S_CQuestType 0
scoreboard players set @s S_ZNeededExp 0
scoreboard players set @s S_SNeededExp 0
scoreboard players set @s S_WNeededExp 0
scoreboard players set @s S_TimeToKill 0
scoreboard players set @s S_TimeToSpawn 0
scoreboard players set @s S_SinceStart 0
tag @s remove Spawning
function slayers:scoreboard/remove_stats


execute as @e[tag=NPCMenu,sort=nearest,limit=1] at @s run function menu:close_menu


