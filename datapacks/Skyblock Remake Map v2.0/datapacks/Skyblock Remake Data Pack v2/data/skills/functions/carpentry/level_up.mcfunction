scoreboard players operation @s Temp = @s S_Carpentry
scoreboard players add @s S_Carpentry 1
scoreboard players add @s S_CarpentryN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Carpentry","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Carpentry"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players set @s S_CarpentryEXP 0

execute if score @s S_Carpentry matches 1 run scoreboard players set @s S_CarpentryEXPN 125
execute if score @s S_Carpentry matches 2 run scoreboard players set @s S_CarpentryEXPN 200
execute if score @s S_Carpentry matches 3 run scoreboard players set @s S_CarpentryEXPN 300
execute if score @s S_Carpentry matches 4 run scoreboard players set @s S_CarpentryEXPN 500
execute if score @s S_Carpentry matches 5 run scoreboard players set @s S_CarpentryEXPN 750
execute if score @s S_Carpentry matches 6 run scoreboard players set @s S_CarpentryEXPN 1000
execute if score @s S_Carpentry matches 7 run scoreboard players set @s S_CarpentryEXPN 1500
execute if score @s S_Carpentry matches 8 run scoreboard players set @s S_CarpentryEXPN 2000
execute if score @s S_Carpentry matches 9 run scoreboard players set @s S_CarpentryEXPN 3500
execute if score @s S_Carpentry matches 10 run scoreboard players set @s S_CarpentryEXPN 5000
execute if score @s S_Carpentry matches 11 run scoreboard players set @s S_CarpentryEXPN 7500
execute if score @s S_Carpentry matches 12 run scoreboard players set @s S_CarpentryEXPN 10000
execute if score @s S_Carpentry matches 13 run scoreboard players set @s S_CarpentryEXPN 15000
execute if score @s S_Carpentry matches 14 run scoreboard players set @s S_CarpentryEXPN 20000
execute if score @s S_Carpentry matches 15 run scoreboard players set @s S_CarpentryEXPN 30000
execute if score @s S_Carpentry matches 16 run scoreboard players set @s S_CarpentryEXPN 50000
execute if score @s S_Carpentry matches 17 run scoreboard players set @s S_CarpentryEXPN 75000
execute if score @s S_Carpentry matches 18 run scoreboard players set @s S_CarpentryEXPN 100000
execute if score @s S_Carpentry matches 19 run scoreboard players set @s S_CarpentryEXPN 200000
execute if score @s S_Carpentry matches 20 run scoreboard players set @s S_CarpentryEXPN 300000
execute if score @s S_Carpentry matches 21 run scoreboard players set @s S_CarpentryEXPN 400000
execute if score @s S_Carpentry matches 22 run scoreboard players set @s S_CarpentryEXPN 500000
execute if score @s S_Carpentry matches 23 run scoreboard players set @s S_CarpentryEXPN 600000
execute if score @s S_Carpentry matches 24 run scoreboard players set @s S_CarpentryEXPN 700000
execute if score @s S_Carpentry matches 25 run scoreboard players set @s S_CarpentryEXPN 800000
execute if score @s S_Carpentry matches 26 run scoreboard players set @s S_CarpentryEXPN 900000
execute if score @s S_Carpentry matches 27 run scoreboard players set @s S_CarpentryEXPN 1000000
execute if score @s S_Carpentry matches 28 run scoreboard players set @s S_CarpentryEXPN 1100000
execute if score @s S_Carpentry matches 29 run scoreboard players set @s S_CarpentryEXPN 1200000
execute if score @s S_Carpentry matches 30 run scoreboard players set @s S_CarpentryEXPN 1300000
execute if score @s S_Carpentry matches 31 run scoreboard players set @s S_CarpentryEXPN 1400000
execute if score @s S_Carpentry matches 32 run scoreboard players set @s S_CarpentryEXPN 1500000
execute if score @s S_Carpentry matches 33 run scoreboard players set @s S_CarpentryEXPN 1600000
execute if score @s S_Carpentry matches 34 run scoreboard players set @s S_CarpentryEXPN 1700000
execute if score @s S_Carpentry matches 35 run scoreboard players set @s S_CarpentryEXPN 1800000
execute if score @s S_Carpentry matches 36 run scoreboard players set @s S_CarpentryEXPN 1900000
execute if score @s S_Carpentry matches 37 run scoreboard players set @s S_CarpentryEXPN 2000000
execute if score @s S_Carpentry matches 38 run scoreboard players set @s S_CarpentryEXPN 2100000
execute if score @s S_Carpentry matches 39 run scoreboard players set @s S_CarpentryEXPN 2200000
execute if score @s S_Carpentry matches 40 run scoreboard players set @s S_CarpentryEXPN 2300000
execute if score @s S_Carpentry matches 41 run scoreboard players set @s S_CarpentryEXPN 2400000
execute if score @s S_Carpentry matches 42 run scoreboard players set @s S_CarpentryEXPN 2500000
execute if score @s S_Carpentry matches 43 run scoreboard players set @s S_CarpentryEXPN 2600000
execute if score @s S_Carpentry matches 44 run scoreboard players set @s S_CarpentryEXPN 2750000
execute if score @s S_Carpentry matches 45 run scoreboard players set @s S_CarpentryEXPN 2900000
execute if score @s S_Carpentry matches 46 run scoreboard players set @s S_CarpentryEXPN 3100000
execute if score @s S_Carpentry matches 47 run scoreboard players set @s S_CarpentryEXPN 3400000
execute if score @s S_Carpentry matches 48 run scoreboard players set @s S_CarpentryEXPN 3700000
execute if score @s S_Carpentry matches 49 run scoreboard players set @s S_CarpentryEXPN 4000000

execute if score @s S_Carpentry >= @s S_MaxCarpentry run scoreboard players set @s S_CarpentryEXPN 0