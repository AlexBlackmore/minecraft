scoreboard players operation @s Temp = @s S_Taming
scoreboard players add @s S_Taming 1
scoreboard players add @s S_TamingN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Taming","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Taming"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players set @s S_TamingEXP 0

execute if score @s S_Taming matches 1 run scoreboard players set @s S_TamingEXPN 125
execute if score @s S_Taming matches 2 run scoreboard players set @s S_TamingEXPN 200
execute if score @s S_Taming matches 3 run scoreboard players set @s S_TamingEXPN 300
execute if score @s S_Taming matches 4 run scoreboard players set @s S_TamingEXPN 500
execute if score @s S_Taming matches 5 run scoreboard players set @s S_TamingEXPN 750
execute if score @s S_Taming matches 6 run scoreboard players set @s S_TamingEXPN 1000
execute if score @s S_Taming matches 7 run scoreboard players set @s S_TamingEXPN 1500
execute if score @s S_Taming matches 8 run scoreboard players set @s S_TamingEXPN 2000
execute if score @s S_Taming matches 9 run scoreboard players set @s S_TamingEXPN 3500
execute if score @s S_Taming matches 10 run scoreboard players set @s S_TamingEXPN 5000
execute if score @s S_Taming matches 11 run scoreboard players set @s S_TamingEXPN 7500
execute if score @s S_Taming matches 12 run scoreboard players set @s S_TamingEXPN 10000
execute if score @s S_Taming matches 13 run scoreboard players set @s S_TamingEXPN 15000
execute if score @s S_Taming matches 14 run scoreboard players set @s S_TamingEXPN 20000
execute if score @s S_Taming matches 15 run scoreboard players set @s S_TamingEXPN 30000
execute if score @s S_Taming matches 16 run scoreboard players set @s S_TamingEXPN 50000
execute if score @s S_Taming matches 17 run scoreboard players set @s S_TamingEXPN 75000
execute if score @s S_Taming matches 18 run scoreboard players set @s S_TamingEXPN 100000
execute if score @s S_Taming matches 19 run scoreboard players set @s S_TamingEXPN 200000
execute if score @s S_Taming matches 20 run scoreboard players set @s S_TamingEXPN 300000
execute if score @s S_Taming matches 21 run scoreboard players set @s S_TamingEXPN 400000
execute if score @s S_Taming matches 22 run scoreboard players set @s S_TamingEXPN 500000
execute if score @s S_Taming matches 23 run scoreboard players set @s S_TamingEXPN 600000
execute if score @s S_Taming matches 24 run scoreboard players set @s S_TamingEXPN 700000
execute if score @s S_Taming matches 25 run scoreboard players set @s S_TamingEXPN 800000
execute if score @s S_Taming matches 26 run scoreboard players set @s S_TamingEXPN 900000
execute if score @s S_Taming matches 27 run scoreboard players set @s S_TamingEXPN 1000000
execute if score @s S_Taming matches 28 run scoreboard players set @s S_TamingEXPN 1100000
execute if score @s S_Taming matches 29 run scoreboard players set @s S_TamingEXPN 1200000
execute if score @s S_Taming matches 30 run scoreboard players set @s S_TamingEXPN 1300000
execute if score @s S_Taming matches 31 run scoreboard players set @s S_TamingEXPN 1400000
execute if score @s S_Taming matches 32 run scoreboard players set @s S_TamingEXPN 1500000
execute if score @s S_Taming matches 33 run scoreboard players set @s S_TamingEXPN 1600000
execute if score @s S_Taming matches 34 run scoreboard players set @s S_TamingEXPN 1700000
execute if score @s S_Taming matches 35 run scoreboard players set @s S_TamingEXPN 1800000
execute if score @s S_Taming matches 36 run scoreboard players set @s S_TamingEXPN 1900000
execute if score @s S_Taming matches 37 run scoreboard players set @s S_TamingEXPN 2000000
execute if score @s S_Taming matches 38 run scoreboard players set @s S_TamingEXPN 2100000
execute if score @s S_Taming matches 39 run scoreboard players set @s S_TamingEXPN 2200000
execute if score @s S_Taming matches 40 run scoreboard players set @s S_TamingEXPN 2300000
execute if score @s S_Taming matches 41 run scoreboard players set @s S_TamingEXPN 2400000
execute if score @s S_Taming matches 42 run scoreboard players set @s S_TamingEXPN 2500000
execute if score @s S_Taming matches 43 run scoreboard players set @s S_TamingEXPN 2600000
execute if score @s S_Taming matches 44 run scoreboard players set @s S_TamingEXPN 2750000
execute if score @s S_Taming matches 45 run scoreboard players set @s S_TamingEXPN 2900000
execute if score @s S_Taming matches 46 run scoreboard players set @s S_TamingEXPN 3100000
execute if score @s S_Taming matches 47 run scoreboard players set @s S_TamingEXPN 3400000
execute if score @s S_Taming matches 48 run scoreboard players set @s S_TamingEXPN 3700000
execute if score @s S_Taming matches 49 run scoreboard players set @s S_TamingEXPN 4000000
execute if score @s S_Taming matches 50 run scoreboard players set @s S_TamingEXPN 0

execute if score @s S_Taming >= @s S_MaxTaming run scoreboard players set @s S_TamingEXPN 0