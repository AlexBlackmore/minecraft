#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CANCEL QUEST---------------#
scoreboard players set $RemainingEXPZ Temp 0
scoreboard players set $RemainingEXPS Temp 0
scoreboard players set $RemainingEXPW Temp 0


scoreboard players operation $PreEXP Temp = @s S_ZombieEXPN
execute store result score $RemainingEXPZ Temp run scoreboard players operation @s S_ZombieEXPN -= @s S_ZombieEXP
scoreboard players operation @s S_ZombieEXPN = $PreEXP Temp

scoreboard players operation $PreEXP Temp = @s S_SpiderEXPN
execute store result score $RemainingEXPS Temp run scoreboard players operation @s S_SpiderEXPN -= @s S_SpiderEXP
scoreboard players operation @s S_SpiderEXPN = $PreEXP Temp

scoreboard players operation $PreEXP Temp = @s S_WolfEXPN
execute store result score $RemainingEXPW Temp run scoreboard players operation @s S_WolfEXPN -= @s S_WolfEXP
scoreboard players operation @s S_WolfEXPN = $PreEXP Temp

