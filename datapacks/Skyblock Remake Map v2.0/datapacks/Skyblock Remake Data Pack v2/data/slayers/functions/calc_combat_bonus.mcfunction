#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------COMBAT XP BOOST BONUS-----------#
execute if score $ZHighSlainPre Temp matches 0 if score @s S_ZHighSlain matches 1 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $ZHighSlainPre Temp matches 1 if score @s S_ZHighSlain matches 2 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $ZHighSlainPre Temp matches 2 if score @s S_ZHighSlain matches 3 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $ZHighSlainPre Temp matches 3 if score @s S_ZHighSlain matches 4 run scoreboard players add @s S_SlayerCmbtB 2

execute if score $SHighSlainPre Temp matches 0 if score @s S_SHighSlain matches 1 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $SHighSlainPre Temp matches 1 if score @s S_SHighSlain matches 2 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $SHighSlainPre Temp matches 2 if score @s S_SHighSlain matches 3 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $SHighSlainPre Temp matches 3 if score @s S_SHighSlain matches 4 run scoreboard players add @s S_SlayerCmbtB 2

execute if score $WHighSlainPre Temp matches 0 if score @s S_WHighSlain matches 1 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $WHighSlainPre Temp matches 1 if score @s S_WHighSlain matches 2 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $WHighSlainPre Temp matches 2 if score @s S_WHighSlain matches 3 run scoreboard players add @s S_SlayerCmbtB 1
execute if score $WHighSlainPre Temp matches 3 if score @s S_WHighSlain matches 4 run scoreboard players add @s S_SlayerCmbtB 2



execute if score $ZHighSlainPre Temp matches 0 if score @s S_ZHighSlain matches 1 run scoreboard players add @s S_TotalCombatB 1
execute if score $ZHighSlainPre Temp matches 1 if score @s S_ZHighSlain matches 2 run scoreboard players add @s S_TotalCombatB 1
execute if score $ZHighSlainPre Temp matches 2 if score @s S_ZHighSlain matches 3 run scoreboard players add @s S_TotalCombatB 1
execute if score $ZHighSlainPre Temp matches 3 if score @s S_ZHighSlain matches 4 run scoreboard players add @s S_TotalCombatB 2

execute if score $SHighSlainPre Temp matches 0 if score @s S_SHighSlain matches 1 run scoreboard players add @s S_TotalCombatB 1
execute if score $SHighSlainPre Temp matches 1 if score @s S_SHighSlain matches 2 run scoreboard players add @s S_TotalCombatB 1
execute if score $SHighSlainPre Temp matches 2 if score @s S_SHighSlain matches 3 run scoreboard players add @s S_TotalCombatB 1
execute if score $SHighSlainPre Temp matches 3 if score @s S_SHighSlain matches 4 run scoreboard players add @s S_TotalCombatB 2

execute if score $WHighSlainPre Temp matches 0 if score @s S_WHighSlain matches 1 run scoreboard players add @s S_TotalCombatB 1
execute if score $WHighSlainPre Temp matches 1 if score @s S_WHighSlain matches 2 run scoreboard players add @s S_TotalCombatB 1
execute if score $WHighSlainPre Temp matches 2 if score @s S_WHighSlain matches 3 run scoreboard players add @s S_TotalCombatB 1
execute if score $WHighSlainPre Temp matches 3 if score @s S_WHighSlain matches 4 run scoreboard players add @s S_TotalCombatB 2