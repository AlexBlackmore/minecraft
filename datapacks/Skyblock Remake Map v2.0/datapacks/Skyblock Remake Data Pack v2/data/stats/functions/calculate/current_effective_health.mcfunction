scoreboard players operation @s PlayerEHP = @s PlayerHP
execute if score @s P_Defense matches 1.. run scoreboard players operation @s PlayerEHP *= @s P_MultDefense
execute if score @s P_Defense matches 1.. run scoreboard players operation @s PlayerEHP /= c100 Constant
execute if score @s PlayerEHP > @s P_EHP run function stats:restore_health
execute if score @s PlayerHP > @s P_Health run function stats:restore_health