scoreboard players operation @s Temp = @s S_Farming
scoreboard players add @s S_Farming 1
scoreboard players add @s S_FarmingN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Farming","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Farming"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players set @s S_FarmingEXP 0

execute if score @s S_Farming matches 1 run scoreboard players set @s S_FarmingEXPN 125
execute if score @s S_Farming matches 2 run scoreboard players set @s S_FarmingEXPN 200
execute if score @s S_Farming matches 3 run scoreboard players set @s S_FarmingEXPN 300
execute if score @s S_Farming matches 4 run scoreboard players set @s S_FarmingEXPN 500
execute if score @s S_Farming matches 5 run scoreboard players set @s S_FarmingEXPN 750
execute if score @s S_Farming matches 6 run scoreboard players set @s S_FarmingEXPN 1000
execute if score @s S_Farming matches 7 run scoreboard players set @s S_FarmingEXPN 1500
execute if score @s S_Farming matches 8 run scoreboard players set @s S_FarmingEXPN 2000
execute if score @s S_Farming matches 9 run scoreboard players set @s S_FarmingEXPN 3500
execute if score @s S_Farming matches 10 run scoreboard players set @s S_FarmingEXPN 5000
execute if score @s S_Farming matches 11 run scoreboard players set @s S_FarmingEXPN 7500
execute if score @s S_Farming matches 12 run scoreboard players set @s S_FarmingEXPN 10000
execute if score @s S_Farming matches 13 run scoreboard players set @s S_FarmingEXPN 15000
execute if score @s S_Farming matches 14 run scoreboard players set @s S_FarmingEXPN 20000
execute if score @s S_Farming matches 15 run scoreboard players set @s S_FarmingEXPN 30000
execute if score @s S_Farming matches 16 run scoreboard players set @s S_FarmingEXPN 50000
execute if score @s S_Farming matches 17 run scoreboard players set @s S_FarmingEXPN 75000
execute if score @s S_Farming matches 18 run scoreboard players set @s S_FarmingEXPN 100000
execute if score @s S_Farming matches 19 run scoreboard players set @s S_FarmingEXPN 200000
execute if score @s S_Farming matches 20 run scoreboard players set @s S_FarmingEXPN 300000
execute if score @s S_Farming matches 21 run scoreboard players set @s S_FarmingEXPN 400000
execute if score @s S_Farming matches 22 run scoreboard players set @s S_FarmingEXPN 500000
execute if score @s S_Farming matches 23 run scoreboard players set @s S_FarmingEXPN 600000
execute if score @s S_Farming matches 24 run scoreboard players set @s S_FarmingEXPN 700000
execute if score @s S_Farming matches 25 run scoreboard players set @s S_FarmingEXPN 800000
execute if score @s S_Farming matches 26 run scoreboard players set @s S_FarmingEXPN 900000
execute if score @s S_Farming matches 27 run scoreboard players set @s S_FarmingEXPN 1000000
execute if score @s S_Farming matches 28 run scoreboard players set @s S_FarmingEXPN 1100000
execute if score @s S_Farming matches 29 run scoreboard players set @s S_FarmingEXPN 1200000
execute if score @s S_Farming matches 30 run scoreboard players set @s S_FarmingEXPN 1300000
execute if score @s S_Farming matches 31 run scoreboard players set @s S_FarmingEXPN 1400000
execute if score @s S_Farming matches 32 run scoreboard players set @s S_FarmingEXPN 1500000
execute if score @s S_Farming matches 33 run scoreboard players set @s S_FarmingEXPN 1600000
execute if score @s S_Farming matches 34 run scoreboard players set @s S_FarmingEXPN 1700000
execute if score @s S_Farming matches 35 run scoreboard players set @s S_FarmingEXPN 1800000
execute if score @s S_Farming matches 36 run scoreboard players set @s S_FarmingEXPN 1900000
execute if score @s S_Farming matches 37 run scoreboard players set @s S_FarmingEXPN 2000000
execute if score @s S_Farming matches 38 run scoreboard players set @s S_FarmingEXPN 2100000
execute if score @s S_Farming matches 39 run scoreboard players set @s S_FarmingEXPN 2200000
execute if score @s S_Farming matches 40 run scoreboard players set @s S_FarmingEXPN 2300000
execute if score @s S_Farming matches 41 run scoreboard players set @s S_FarmingEXPN 2400000
execute if score @s S_Farming matches 42 run scoreboard players set @s S_FarmingEXPN 2500000
execute if score @s S_Farming matches 43 run scoreboard players set @s S_FarmingEXPN 2600000
execute if score @s S_Farming matches 44 run scoreboard players set @s S_FarmingEXPN 2750000
execute if score @s S_Farming matches 45 run scoreboard players set @s S_FarmingEXPN 2900000
execute if score @s S_Farming matches 46 run scoreboard players set @s S_FarmingEXPN 3100000
execute if score @s S_Farming matches 47 run scoreboard players set @s S_FarmingEXPN 3400000
execute if score @s S_Farming matches 48 run scoreboard players set @s S_FarmingEXPN 3700000
execute if score @s S_Farming matches 49 run scoreboard players set @s S_FarmingEXPN 4000000

execute if score @s S_Farming >= @s S_MaxFarming run scoreboard players set @s S_FarmingEXPN 0