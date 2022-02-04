scoreboard players operation @s Temp = @s S_Foraging
scoreboard players add @s S_Foraging 1
scoreboard players add @s S_ForagingN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Foraging","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Foraging"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players set @s S_ForagingExp 0

execute if score @s S_Foraging matches 1 run scoreboard players set @s S_ForagingEXPN 125
execute if score @s S_Foraging matches 2 run scoreboard players set @s S_ForagingEXPN 200
execute if score @s S_Foraging matches 3 run scoreboard players set @s S_ForagingEXPN 300
execute if score @s S_Foraging matches 4 run scoreboard players set @s S_ForagingEXPN 500
execute if score @s S_Foraging matches 5 run scoreboard players set @s S_ForagingEXPN 750
execute if score @s S_Foraging matches 6 run scoreboard players set @s S_ForagingEXPN 1000
execute if score @s S_Foraging matches 7 run scoreboard players set @s S_ForagingEXPN 1500
execute if score @s S_Foraging matches 8 run scoreboard players set @s S_ForagingEXPN 2000
execute if score @s S_Foraging matches 9 run scoreboard players set @s S_ForagingEXPN 3500
execute if score @s S_Foraging matches 10 run scoreboard players set @s S_ForagingEXPN 5000
execute if score @s S_Foraging matches 11 run scoreboard players set @s S_ForagingEXPN 7500
execute if score @s S_Foraging matches 12 run scoreboard players set @s S_ForagingEXPN 10000
execute if score @s S_Foraging matches 13 run scoreboard players set @s S_ForagingEXPN 15000
execute if score @s S_Foraging matches 14 run scoreboard players set @s S_ForagingEXPN 20000
execute if score @s S_Foraging matches 15 run scoreboard players set @s S_ForagingEXPN 30000
execute if score @s S_Foraging matches 16 run scoreboard players set @s S_ForagingEXPN 50000
execute if score @s S_Foraging matches 17 run scoreboard players set @s S_ForagingEXPN 75000
execute if score @s S_Foraging matches 18 run scoreboard players set @s S_ForagingEXPN 100000
execute if score @s S_Foraging matches 19 run scoreboard players set @s S_ForagingEXPN 200000
execute if score @s S_Foraging matches 20 run scoreboard players set @s S_ForagingEXPN 300000
execute if score @s S_Foraging matches 21 run scoreboard players set @s S_ForagingEXPN 400000
execute if score @s S_Foraging matches 22 run scoreboard players set @s S_ForagingEXPN 500000
execute if score @s S_Foraging matches 23 run scoreboard players set @s S_ForagingEXPN 600000
execute if score @s S_Foraging matches 24 run scoreboard players set @s S_ForagingEXPN 700000
execute if score @s S_Foraging matches 25 run scoreboard players set @s S_ForagingEXPN 800000
execute if score @s S_Foraging matches 26 run scoreboard players set @s S_ForagingEXPN 900000
execute if score @s S_Foraging matches 27 run scoreboard players set @s S_ForagingEXPN 1000000
execute if score @s S_Foraging matches 28 run scoreboard players set @s S_ForagingEXPN 1100000
execute if score @s S_Foraging matches 29 run scoreboard players set @s S_ForagingEXPN 1200000
execute if score @s S_Foraging matches 30 run scoreboard players set @s S_ForagingEXPN 1300000
execute if score @s S_Foraging matches 31 run scoreboard players set @s S_ForagingEXPN 1400000
execute if score @s S_Foraging matches 32 run scoreboard players set @s S_ForagingEXPN 1500000
execute if score @s S_Foraging matches 33 run scoreboard players set @s S_ForagingEXPN 1600000
execute if score @s S_Foraging matches 34 run scoreboard players set @s S_ForagingEXPN 1700000
execute if score @s S_Foraging matches 35 run scoreboard players set @s S_ForagingEXPN 1800000
execute if score @s S_Foraging matches 36 run scoreboard players set @s S_ForagingEXPN 1900000
execute if score @s S_Foraging matches 37 run scoreboard players set @s S_ForagingEXPN 2000000
execute if score @s S_Foraging matches 38 run scoreboard players set @s S_ForagingEXPN 2100000
execute if score @s S_Foraging matches 39 run scoreboard players set @s S_ForagingEXPN 2200000
execute if score @s S_Foraging matches 40 run scoreboard players set @s S_ForagingEXPN 2300000
execute if score @s S_Foraging matches 41 run scoreboard players set @s S_ForagingEXPN 2400000
execute if score @s S_Foraging matches 42 run scoreboard players set @s S_ForagingEXPN 2500000
execute if score @s S_Foraging matches 43 run scoreboard players set @s S_ForagingEXPN 2600000
execute if score @s S_Foraging matches 44 run scoreboard players set @s S_ForagingEXPN 2750000
execute if score @s S_Foraging matches 45 run scoreboard players set @s S_ForagingEXPN 2900000
execute if score @s S_Foraging matches 46 run scoreboard players set @s S_ForagingEXPN 3100000
execute if score @s S_Foraging matches 47 run scoreboard players set @s S_ForagingEXPN 3400000
execute if score @s S_Foraging matches 48 run scoreboard players set @s S_ForagingEXPN 3700000
execute if score @s S_Foraging matches 49 run scoreboard players set @s S_ForagingEXPN 4000000
scoreboard players set @s S_ForagingEXP 0
execute if score @s S_Foraging >= @s S_MaxForaging run scoreboard players set @s S_ForagingEXPN 0