#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MESSAGES------------------#
tellraw @s ["",{"text":"  SLAYER QUEST STARTED!","color":"dark_purple","bold":true}]
tellraw @s ["",{"text":"  »","color":"dark_purple","bold":true},{"text":" Slay ","color":"gray"},{"score":{"name":"SpiderTier_3","objective": "S_XPToSpawn"},"color":"red"},{"text":" Combat XP","color":"red"},{"text":" worth of Spiders.","color":"gray"}]
playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 1.5 1
scoreboard players set @s S_CQuestEXP 0
tag @s add HasSlayerQuest
scoreboard players operation @s S_SNeededExp = SpiderTier_3 S_XPToSpawn
scoreboard players set @s S_CQuestType 2
scoreboard players set @s S_CQuestTier 3
function menu:remove_menu
function stats:calculate/stats
scoreboard players set @s S_NoLoop 0
tag @s add FirstKill
function slayers:scoreboard/add_stats
function slayers:take_coins

#------------------------------------------#