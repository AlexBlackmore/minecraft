#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
#100%: 1,000,000, 1%: 10,000, 0.0001%: 1

scoreboard players set @s DropChance 500
function stats:calculate/drop_chance/success
execute if score out RandMath matches 1..500 run function mobs:rare_drops/success/enderman_pet

scoreboard players set @s DropChance 4000
function stats:calculate/drop_chance/include_luck_enchant
function stats:calculate/drop_chance/success
execute if score out RandMath matches 1..1000 run function mobs:rare_drops/success/enderman_ender_armor

advancement revoke @s only mobs:rare_drops/enderman
#------------------------------------------#