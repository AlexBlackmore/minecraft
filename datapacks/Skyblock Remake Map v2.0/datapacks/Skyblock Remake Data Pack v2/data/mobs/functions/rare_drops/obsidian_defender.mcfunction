#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
#100%: 1,000,000, 1%: 10,000, 0.0001%: 1

scoreboard players set @s DropChance 51200
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance run execute if score @s HasDropped matches 0 run function mobs:rare_drops/success/obsidian_defender

advancement revoke @s only mobs:rare_drops/obsidian_defender
#------------------------------------------#