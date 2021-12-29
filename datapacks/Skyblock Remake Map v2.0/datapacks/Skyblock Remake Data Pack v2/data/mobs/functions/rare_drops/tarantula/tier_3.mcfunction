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
execute if score out RandMath matches ..20 run function mobs:rare_drops/success/tarantula/tier_2/toxic_arrow

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute if score out RandMath matches ..5 if score @s S_SpiderLvl matches 1.. run function mobs:rare_drops/success/tarantula/bite_rune

scoreboard players set @s DropChance 10000
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_SpiderLvl matches 2.. run function mobs:rare_drops/success/tarantula/spider_catalyst

scoreboard players set @s DropChance 10000
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_SpiderLvl matches 4.. run function mobs:rare_drops/success/tarantula/bane_6

scoreboard players set @s DropChance 50
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_SpiderLvl matches 5.. run function mobs:rare_drops/success/tarantula/fly_swatter

scoreboard players set @s DropChance 30
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_SpiderLvl matches 6.. run function mobs:rare_drops/success/tarantula/tarantula_talisman

advancement revoke @s only mobs:rare_drops/tarantula_tier_3
#------------------------------------------#