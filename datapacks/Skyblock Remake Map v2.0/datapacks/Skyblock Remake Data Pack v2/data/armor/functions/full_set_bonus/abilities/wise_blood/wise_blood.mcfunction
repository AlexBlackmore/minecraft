scoreboard players set @s WiseBonus 66
scoreboard players set c100 Constant 100

scoreboard players operation $ManaCost Temp *= @s WiseBonus
scoreboard players operation $ManaCost Temp /= c100 Constant