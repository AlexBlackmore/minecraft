#===================NOTE===================#
#    This function was part of a script    #
#            coded by PixOnePro            #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
scoreboard players set $CombatEXP Temp 4
execute if score @s S_TotalCombatB matches 1.. run function skills:combat/calc_exp_drop
scoreboard players operation @s S_CombatEXP += $CombatEXP Temp
function skills:combat/actionbar
advancement revoke @s only mobs:combat_drop/blazing_fortress/small_magma_cube
execute if entity @s[tag=HasSlayerQuest] run function slayers:add_exp_to_quest
#==========================================#