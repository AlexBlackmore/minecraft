scoreboard players operation @s PlayerAEHP = @s PlayerAHP
execute if score @s P_Defense matches 1.. run scoreboard players operation @s PlayerAEHP *= @s P_MultDefense
execute if score @s P_Defense matches 1.. run scoreboard players operation @s PlayerAEHP /= c100 Constant