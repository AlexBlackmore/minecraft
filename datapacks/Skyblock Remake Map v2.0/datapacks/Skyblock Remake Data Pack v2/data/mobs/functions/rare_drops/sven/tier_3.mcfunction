#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
#100%: 1,000,000, 1%: 10,000, 0.0010%: 10, 0.0001%: 1

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute if score out RandMath matches ..15 run function mobs:rare_drops/success/sven/tier_3/hamster_wheel

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute if score out RandMath matches ..5 if score @s S_WolfLvl matches 2.. run function mobs:rare_drops/success/sven/spirit_rune

scoreboard players set @s DropChance 10000
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_WolfLvl matches 4.. run function mobs:rare_drops/success/sven/crit_6

scoreboard players set @s DropChance 223
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_WolfLvl matches 5.. run function mobs:rare_drops/success/sven/red_claw_egg

advancement revoke @s only mobs:rare_drops/sven_tier_3
#------------------------------------------#