#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
tag @s remove SlayerSpawned
tag @s remove HasSlayerQuest
tag @s add QuestFailed
tellraw @s [{"text":"  SLAYER QUEST FAILED!","color":"red","bold":true}]
tellraw @s [{"text":"  »","color":"dark_purple"},{"text":" You died! Death is not permitted!","color":"gray"}]
playsound entity.villager.no master @s ~ ~ ~ 1 0.8 1 
execute at @s as @e[tag=Slayer] if score @s PlayerID = @p PlayerID at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0.1 100 force
execute at @s as @e[tag=Slayer] if score @s PlayerID = @p PlayerID run tp @s ~ ~-300 ~
execute at @s as @e[tag=Slayer] if score @s PlayerID = @p PlayerID run kill @s
function slayers:calc_time_since_start
function slayers:scoreboard/remove_stats