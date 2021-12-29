#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FEROCITY-----------------#
scoreboard players add @s P_FeroTimer 1
execute if score @s P_FeroTimer matches 5.. run tag @p add TargetEntity
execute if score @s P_FeroTimer matches 5.. run tag @s remove FeroStrike
execute if score @s P_FeroTimer matches 5.. if score @s P_FeroStrikes matches ..0 run tag @p remove FeroStrikePlayer

# SFX
execute at @s if score @s P_FeroTimer matches 5.. if score @s P_FeroStrikes matches 1.. run function stats:ferocity/sfx/main

# Damage
execute at @s if score @s P_FeroTimer matches 5.. if score @s P_FeroStrikes matches 1.. run function stats:damage_update_mob


execute if score @s P_FeroTimer matches 5.. if score @s P_FeroStrikes matches ..0 run tag @p remove FeroStats
execute if score @s P_FeroTimer matches 5.. run tag @p remove TargetEntity


# RESET
execute if score @s P_FeroTimer matches 5.. run scoreboard players set @s P_FeroTimer 0
#------------------------------------------#