scoreboard players operation @s Temp = @s S_Fishing
scoreboard players add @s S_Fishing 1
scoreboard players add @s S_FishingN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Fishing","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Fishing"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players set @s S_FishingEXP 0


execute if score @s S_Fishing matches 1 run scoreboard players set @s S_FishingEXPN 125
execute if score @s S_Fishing matches 2 run scoreboard players set @s S_FishingEXPN 200
execute if score @s S_Fishing matches 3 run scoreboard players set @s S_FishingEXPN 300
execute if score @s S_Fishing matches 4 run scoreboard players set @s S_FishingEXPN 500
execute if score @s S_Fishing matches 5 run scoreboard players set @s S_FishingEXPN 750
execute if score @s S_Fishing matches 6 run scoreboard players set @s S_FishingEXPN 1000
execute if score @s S_Fishing matches 7 run scoreboard players set @s S_FishingEXPN 1500
execute if score @s S_Fishing matches 8 run scoreboard players set @s S_FishingEXPN 2000
execute if score @s S_Fishing matches 9 run scoreboard players set @s S_FishingEXPN 3500
execute if score @s S_Fishing matches 10 run scoreboard players set @s S_FishingEXPN 5000
execute if score @s S_Fishing matches 11 run scoreboard players set @s S_FishingEXPN 7500
execute if score @s S_Fishing matches 12 run scoreboard players set @s S_FishingEXPN 10000
execute if score @s S_Fishing matches 13 run scoreboard players set @s S_FishingEXPN 15000
execute if score @s S_Fishing matches 14 run scoreboard players set @s S_FishingEXPN 20000
execute if score @s S_Fishing matches 15 run scoreboard players set @s S_FishingEXPN 30000
execute if score @s S_Fishing matches 16 run scoreboard players set @s S_FishingEXPN 50000
execute if score @s S_Fishing matches 17 run scoreboard players set @s S_FishingEXPN 75000
execute if score @s S_Fishing matches 18 run scoreboard players set @s S_FishingEXPN 100000
execute if score @s S_Fishing matches 19 run scoreboard players set @s S_FishingEXPN 200000
execute if score @s S_Fishing matches 20 run scoreboard players set @s S_FishingEXPN 300000
execute if score @s S_Fishing matches 21 run scoreboard players set @s S_FishingEXPN 400000
execute if score @s S_Fishing matches 22 run scoreboard players set @s S_FishingEXPN 500000
execute if score @s S_Fishing matches 23 run scoreboard players set @s S_FishingEXPN 600000
execute if score @s S_Fishing matches 24 run scoreboard players set @s S_FishingEXPN 700000
execute if score @s S_Fishing matches 25 run scoreboard players set @s S_FishingEXPN 800000
execute if score @s S_Fishing matches 26 run scoreboard players set @s S_FishingEXPN 900000
execute if score @s S_Fishing matches 27 run scoreboard players set @s S_FishingEXPN 1000000
execute if score @s S_Fishing matches 28 run scoreboard players set @s S_FishingEXPN 1100000
execute if score @s S_Fishing matches 29 run scoreboard players set @s S_FishingEXPN 1200000
execute if score @s S_Fishing matches 30 run scoreboard players set @s S_FishingEXPN 1300000
execute if score @s S_Fishing matches 31 run scoreboard players set @s S_FishingEXPN 1400000
execute if score @s S_Fishing matches 32 run scoreboard players set @s S_FishingEXPN 1500000
execute if score @s S_Fishing matches 33 run scoreboard players set @s S_FishingEXPN 1600000
execute if score @s S_Fishing matches 34 run scoreboard players set @s S_FishingEXPN 1700000
execute if score @s S_Fishing matches 35 run scoreboard players set @s S_FishingEXPN 1800000
execute if score @s S_Fishing matches 36 run scoreboard players set @s S_FishingEXPN 1900000
execute if score @s S_Fishing matches 37 run scoreboard players set @s S_FishingEXPN 2000000
execute if score @s S_Fishing matches 38 run scoreboard players set @s S_FishingEXPN 2100000
execute if score @s S_Fishing matches 39 run scoreboard players set @s S_FishingEXPN 2200000
execute if score @s S_Fishing matches 40 run scoreboard players set @s S_FishingEXPN 2300000
execute if score @s S_Fishing matches 41 run scoreboard players set @s S_FishingEXPN 2400000
execute if score @s S_Fishing matches 42 run scoreboard players set @s S_FishingEXPN 2500000
execute if score @s S_Fishing matches 43 run scoreboard players set @s S_FishingEXPN 2600000
execute if score @s S_Fishing matches 44 run scoreboard players set @s S_FishingEXPN 2750000
execute if score @s S_Fishing matches 45 run scoreboard players set @s S_FishingEXPN 2900000
execute if score @s S_Fishing matches 46 run scoreboard players set @s S_FishingEXPN 3100000
execute if score @s S_Fishing matches 47 run scoreboard players set @s S_FishingEXPN 3400000
execute if score @s S_Fishing matches 48 run scoreboard players set @s S_FishingEXPN 3700000
execute if score @s S_Fishing matches 49 run scoreboard players set @s S_FishingEXPN 4000000

execute if score @s S_Fishing >= @s S_MaxFishing run scoreboard players set @s S_FishingEXPN 0