#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
#100%: 1,000,000, 1%: 10,000, 0.0001%: 1
scoreboard players add @s End_ZealotKills 1

scoreboard players set @s DropChance 2380
scoreboard players set @s[scores={End_ZealotKills=421..}] DropChance 4761
scoreboard players operation @s DropChance *= SpecialZealotChances Setting

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 1000000
function skyblock:random/range_lcg
scoreboard players operation out RandMath = out RandMath

execute if score out RandMath <= @s DropChance run function mobs:rare_drops/success/zealot

advancement revoke @s only mobs:rare_drops/zealot
#------------------------------------------#