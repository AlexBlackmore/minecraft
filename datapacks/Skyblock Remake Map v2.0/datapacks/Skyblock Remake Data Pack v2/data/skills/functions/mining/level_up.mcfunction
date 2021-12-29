scoreboard players operation @s Temp = @s S_Mining
scoreboard players add @s S_Mining 1
scoreboard players add @s S_MiningN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Mining","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Mining"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players operation @s S_MiningEXP -= @s S_MiningEXPN

execute if score @s S_Mining matches 1 run scoreboard players set @s S_MiningEXPN 1250
execute if score @s S_Mining matches 2 run scoreboard players set @s S_MiningEXPN 2000
execute if score @s S_Mining matches 3 run scoreboard players set @s S_MiningEXPN 3000
execute if score @s S_Mining matches 4 run scoreboard players set @s S_MiningEXPN 5000
execute if score @s S_Mining matches 5 run scoreboard players set @s S_MiningEXPN 7500
execute if score @s S_Mining matches 6 run scoreboard players set @s S_MiningEXPN 10000
execute if score @s S_Mining matches 7 run scoreboard players set @s S_MiningEXPN 15000
execute if score @s S_Mining matches 8 run scoreboard players set @s S_MiningEXPN 20000
execute if score @s S_Mining matches 9 run scoreboard players set @s S_MiningEXPN 35000
execute if score @s S_Mining matches 10 run scoreboard players set @s S_MiningEXPN 50000
execute if score @s S_Mining matches 11 run scoreboard players set @s S_MiningEXPN 75000
execute if score @s S_Mining matches 12 run scoreboard players set @s S_MiningEXPN 100000
execute if score @s S_Mining matches 13 run scoreboard players set @s S_MiningEXPN 150000
execute if score @s S_Mining matches 14 run scoreboard players set @s S_MiningEXPN 200000
execute if score @s S_Mining matches 15 run scoreboard players set @s S_MiningEXPN 300000
execute if score @s S_Mining matches 16 run scoreboard players set @s S_MiningEXPN 500000
execute if score @s S_Mining matches 17 run scoreboard players set @s S_MiningEXPN 750000
execute if score @s S_Mining matches 18 run scoreboard players set @s S_MiningEXPN 1000000
execute if score @s S_Mining matches 19 run scoreboard players set @s S_MiningEXPN 2000000
execute if score @s S_Mining matches 20 run scoreboard players set @s S_MiningEXPN 3000000
execute if score @s S_Mining matches 21 run scoreboard players set @s S_MiningEXPN 4000000
execute if score @s S_Mining matches 22 run scoreboard players set @s S_MiningEXPN 5000000
execute if score @s S_Mining matches 23 run scoreboard players set @s S_MiningEXPN 6000000
execute if score @s S_Mining matches 24 run scoreboard players set @s S_MiningEXPN 7000000
execute if score @s S_Mining matches 25 run scoreboard players set @s S_MiningEXPN 8000000
execute if score @s S_Mining matches 26 run scoreboard players set @s S_MiningEXPN 9000000
execute if score @s S_Mining matches 27 run scoreboard players set @s S_MiningEXPN 10000000
execute if score @s S_Mining matches 28 run scoreboard players set @s S_MiningEXPN 11000000
execute if score @s S_Mining matches 29 run scoreboard players set @s S_MiningEXPN 12000000
execute if score @s S_Mining matches 30 run scoreboard players set @s S_MiningEXPN 13000000
execute if score @s S_Mining matches 31 run scoreboard players set @s S_MiningEXPN 14000000
execute if score @s S_Mining matches 32 run scoreboard players set @s S_MiningEXPN 15000000
execute if score @s S_Mining matches 33 run scoreboard players set @s S_MiningEXPN 16000000
execute if score @s S_Mining matches 34 run scoreboard players set @s S_MiningEXPN 17000000
execute if score @s S_Mining matches 35 run scoreboard players set @s S_MiningEXPN 18000000
execute if score @s S_Mining matches 36 run scoreboard players set @s S_MiningEXPN 19000000
execute if score @s S_Mining matches 37 run scoreboard players set @s S_MiningEXPN 20000000
execute if score @s S_Mining matches 38 run scoreboard players set @s S_MiningEXPN 21000000
execute if score @s S_Mining matches 39 run scoreboard players set @s S_MiningEXPN 22000000
execute if score @s S_Mining matches 40 run scoreboard players set @s S_MiningEXPN 23000000
execute if score @s S_Mining matches 41 run scoreboard players set @s S_MiningEXPN 24000000
execute if score @s S_Mining matches 42 run scoreboard players set @s S_MiningEXPN 25000000
execute if score @s S_Mining matches 43 run scoreboard players set @s S_MiningEXPN 26000000
execute if score @s S_Mining matches 44 run scoreboard players set @s S_MiningEXPN 27500000
execute if score @s S_Mining matches 45 run scoreboard players set @s S_MiningEXPN 29000000
execute if score @s S_Mining matches 46 run scoreboard players set @s S_MiningEXPN 31000000
execute if score @s S_Mining matches 47 run scoreboard players set @s S_MiningEXPN 34000000
execute if score @s S_Mining matches 48 run scoreboard players set @s S_MiningEXPN 37000000
execute if score @s S_Mining matches 49 run scoreboard players set @s S_MiningEXPN 40000000
execute if score @s S_Mining matches 50 run scoreboard players set @s S_MiningEXPN 43000000
execute if score @s S_Mining matches 51 run scoreboard players set @s S_MiningEXPN 46000000
execute if score @s S_Mining matches 52 run scoreboard players set @s S_MiningEXPN 49000000
execute if score @s S_Mining matches 53 run scoreboard players set @s S_MiningEXPN 52000000
execute if score @s S_Mining matches 54 run scoreboard players set @s S_MiningEXPN 55000000
execute if score @s S_Mining matches 55 run scoreboard players set @s S_MiningEXPN 58000000
execute if score @s S_Mining matches 56 run scoreboard players set @s S_MiningEXPN 61000000
execute if score @s S_Mining matches 57 run scoreboard players set @s S_MiningEXPN 64000000
execute if score @s S_Mining matches 58 run scoreboard players set @s S_MiningEXPN 67000000
execute if score @s S_Mining matches 59 run scoreboard players set @s S_MiningEXPN 70000000

execute if score @s S_Mining >= @s S_MaxMining run scoreboard players set @s S_MiningEXPN 0