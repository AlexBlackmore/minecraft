scoreboard players operation @s Temp = @s S_Alchemy
scoreboard players add @s S_Alchemy 1
scoreboard players add @s S_AlchemyN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Alchemy","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Alchemy"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players set @s S_AlchemyEXP 0

execute if score @s S_Alchemy matches 1 run scoreboard players set @s S_AlchemyEXPN 125
execute if score @s S_Alchemy matches 2 run scoreboard players set @s S_AlchemyEXPN 200
execute if score @s S_Alchemy matches 3 run scoreboard players set @s S_AlchemyEXPN 300
execute if score @s S_Alchemy matches 4 run scoreboard players set @s S_AlchemyEXPN 500
execute if score @s S_Alchemy matches 5 run scoreboard players set @s S_AlchemyEXPN 750
execute if score @s S_Alchemy matches 6 run scoreboard players set @s S_AlchemyEXPN 1000
execute if score @s S_Alchemy matches 7 run scoreboard players set @s S_AlchemyEXPN 1500
execute if score @s S_Alchemy matches 8 run scoreboard players set @s S_AlchemyEXPN 2000
execute if score @s S_Alchemy matches 9 run scoreboard players set @s S_AlchemyEXPN 3500
execute if score @s S_Alchemy matches 10 run scoreboard players set @s S_AlchemyEXPN 5000
execute if score @s S_Alchemy matches 11 run scoreboard players set @s S_AlchemyEXPN 7500
execute if score @s S_Alchemy matches 12 run scoreboard players set @s S_AlchemyEXPN 10000
execute if score @s S_Alchemy matches 13 run scoreboard players set @s S_AlchemyEXPN 15000
execute if score @s S_Alchemy matches 14 run scoreboard players set @s S_AlchemyEXPN 20000
execute if score @s S_Alchemy matches 15 run scoreboard players set @s S_AlchemyEXPN 30000
execute if score @s S_Alchemy matches 16 run scoreboard players set @s S_AlchemyEXPN 50000
execute if score @s S_Alchemy matches 17 run scoreboard players set @s S_AlchemyEXPN 75000
execute if score @s S_Alchemy matches 18 run scoreboard players set @s S_AlchemyEXPN 100000
execute if score @s S_Alchemy matches 19 run scoreboard players set @s S_AlchemyEXPN 200000
execute if score @s S_Alchemy matches 20 run scoreboard players set @s S_AlchemyEXPN 300000
execute if score @s S_Alchemy matches 21 run scoreboard players set @s S_AlchemyEXPN 400000
execute if score @s S_Alchemy matches 22 run scoreboard players set @s S_AlchemyEXPN 500000
execute if score @s S_Alchemy matches 23 run scoreboard players set @s S_AlchemyEXPN 600000
execute if score @s S_Alchemy matches 24 run scoreboard players set @s S_AlchemyEXPN 700000
execute if score @s S_Alchemy matches 25 run scoreboard players set @s S_AlchemyEXPN 800000
execute if score @s S_Alchemy matches 26 run scoreboard players set @s S_AlchemyEXPN 900000
execute if score @s S_Alchemy matches 27 run scoreboard players set @s S_AlchemyEXPN 1000000
execute if score @s S_Alchemy matches 28 run scoreboard players set @s S_AlchemyEXPN 1100000
execute if score @s S_Alchemy matches 29 run scoreboard players set @s S_AlchemyEXPN 1200000
execute if score @s S_Alchemy matches 30 run scoreboard players set @s S_AlchemyEXPN 1300000
execute if score @s S_Alchemy matches 31 run scoreboard players set @s S_AlchemyEXPN 1400000
execute if score @s S_Alchemy matches 32 run scoreboard players set @s S_AlchemyEXPN 1500000
execute if score @s S_Alchemy matches 33 run scoreboard players set @s S_AlchemyEXPN 1600000
execute if score @s S_Alchemy matches 34 run scoreboard players set @s S_AlchemyEXPN 1700000
execute if score @s S_Alchemy matches 35 run scoreboard players set @s S_AlchemyEXPN 1800000
execute if score @s S_Alchemy matches 36 run scoreboard players set @s S_AlchemyEXPN 1900000
execute if score @s S_Alchemy matches 37 run scoreboard players set @s S_AlchemyEXPN 2000000
execute if score @s S_Alchemy matches 38 run scoreboard players set @s S_AlchemyEXPN 2100000
execute if score @s S_Alchemy matches 39 run scoreboard players set @s S_AlchemyEXPN 2200000
execute if score @s S_Alchemy matches 40 run scoreboard players set @s S_AlchemyEXPN 2300000
execute if score @s S_Alchemy matches 41 run scoreboard players set @s S_AlchemyEXPN 2400000
execute if score @s S_Alchemy matches 42 run scoreboard players set @s S_AlchemyEXPN 2500000
execute if score @s S_Alchemy matches 43 run scoreboard players set @s S_AlchemyEXPN 2600000
execute if score @s S_Alchemy matches 44 run scoreboard players set @s S_AlchemyEXPN 2750000
execute if score @s S_Alchemy matches 45 run scoreboard players set @s S_AlchemyEXPN 2900000
execute if score @s S_Alchemy matches 46 run scoreboard players set @s S_AlchemyEXPN 3100000
execute if score @s S_Alchemy matches 47 run scoreboard players set @s S_AlchemyEXPN 3400000
execute if score @s S_Alchemy matches 48 run scoreboard players set @s S_AlchemyEXPN 3700000
execute if score @s S_Alchemy matches 49 run scoreboard players set @s S_AlchemyEXPN 4000000

execute if score @s S_Alchemy >= @s S_MaxAlchemy run scoreboard players set @s S_AlchemyEXPN 0