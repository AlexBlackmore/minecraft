function stats:calculate/defense_multiplier
scoreboard players operation @s P_PreEHP = @s P_EHP
scoreboard players operation @s P_EHP = @s P_Health
execute unless score @s P_MultDefense matches 100 run scoreboard players operation @s P_EHP *= @s P_MultDefense
execute unless score @s P_MultDefense matches 100 run scoreboard players operation @s P_EHP /= c100 Constant