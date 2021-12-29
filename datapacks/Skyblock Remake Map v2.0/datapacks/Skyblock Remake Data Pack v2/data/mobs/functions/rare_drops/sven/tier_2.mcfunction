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
execute if score out RandMath matches ..15 run function mobs:rare_drops/success/sven/tier_2/hamster_wheel

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute if score out RandMath matches ..5 if score @s S_WolfLvl matches 2.. run function mobs:rare_drops/success/sven/spirit_rune

advancement revoke @s only mobs:rare_drops/sven_tier_2
#------------------------------------------#