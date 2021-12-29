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
execute if score out RandMath matches ..20 run function mobs:rare_drops/success/revenant/tier_4/foul_flesh

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute if score out RandMath matches ..5 if score @s S_ZombieLvl matches 2.. run function mobs:rare_drops/success/revenant/pestilence_rune

scoreboard players set @s DropChance 10000
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_ZombieLvl matches 3.. run function mobs:rare_drops/success/revenant/undead_catalyst

scoreboard players set @s DropChance 10000
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_ZombieLvl matches 4.. run function mobs:rare_drops/success/revenant/smite_6

scoreboard players set @s DropChance 53
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_ZombieLvl matches 4.. run function mobs:rare_drops/success/revenant/beheaded_horror

scoreboard players set @s DropChance 10000
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_ZombieLvl matches 6.. run function mobs:rare_drops/success/revenant/revenant_catalyst

scoreboard players set @s DropChance 60
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_ZombieLvl matches 6.. run function mobs:rare_drops/success/revenant/snake_rune

scoreboard players set @s DropChance 5
function stats:calculate/drop_chance/success
execute if score out RandMath <= @s DropChance if score @s S_ZombieLvl matches 7.. run function mobs:rare_drops/success/revenant/scythe_blade

advancement revoke @s only mobs:rare_drops/revenant_tier_4
#------------------------------------------#