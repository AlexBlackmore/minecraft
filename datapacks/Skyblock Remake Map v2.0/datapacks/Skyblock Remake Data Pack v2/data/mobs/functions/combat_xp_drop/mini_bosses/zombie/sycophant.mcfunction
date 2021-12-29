#===================NOTE===================#
#    This function was part of a script    #
#            coded by PixOnePro            #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
scoreboard players set $CombatEXP Temp 300
execute if score @s S_TotalCombatB matches 1.. run function skills:combat/calc_exp_drop
scoreboard players operation @s S_CombatEXP += $CombatEXP Temp
function skills:combat/actionbar
advancement revoke @s only mobs:combat_drop/mini_bosses/zombie/sycophant
#==========================================#