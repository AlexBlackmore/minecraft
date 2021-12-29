scoreboard players operation @s Temp = @s S_Enchanting
scoreboard players add @s S_Enchanting 1
scoreboard players add @s S_EnchantingN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Enchanting","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Enchanting"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players set @s S_EnchantingEXP 0

execute if score @s S_Enchanting matches 1 run scoreboard players set @s S_EnchantingEXPN 125
execute if score @s S_Enchanting matches 2 run scoreboard players set @s S_EnchantingEXPN 200
execute if score @s S_Enchanting matches 3 run scoreboard players set @s S_EnchantingEXPN 300
execute if score @s S_Enchanting matches 4 run scoreboard players set @s S_EnchantingEXPN 500
execute if score @s S_Enchanting matches 5 run scoreboard players set @s S_EnchantingEXPN 750
execute if score @s S_Enchanting matches 6 run scoreboard players set @s S_EnchantingEXPN 1000
execute if score @s S_Enchanting matches 7 run scoreboard players set @s S_EnchantingEXPN 1500
execute if score @s S_Enchanting matches 8 run scoreboard players set @s S_EnchantingEXPN 2000
execute if score @s S_Enchanting matches 9 run scoreboard players set @s S_EnchantingEXPN 3500
execute if score @s S_Enchanting matches 10 run scoreboard players set @s S_EnchantingEXPN 5000
execute if score @s S_Enchanting matches 11 run scoreboard players set @s S_EnchantingEXPN 7500
execute if score @s S_Enchanting matches 12 run scoreboard players set @s S_EnchantingEXPN 10000
execute if score @s S_Enchanting matches 13 run scoreboard players set @s S_EnchantingEXPN 15000
execute if score @s S_Enchanting matches 14 run scoreboard players set @s S_EnchantingEXPN 20000
execute if score @s S_Enchanting matches 15 run scoreboard players set @s S_EnchantingEXPN 30000
execute if score @s S_Enchanting matches 16 run scoreboard players set @s S_EnchantingEXPN 50000
execute if score @s S_Enchanting matches 17 run scoreboard players set @s S_EnchantingEXPN 75000
execute if score @s S_Enchanting matches 18 run scoreboard players set @s S_EnchantingEXPN 100000
execute if score @s S_Enchanting matches 19 run scoreboard players set @s S_EnchantingEXPN 200000
execute if score @s S_Enchanting matches 20 run scoreboard players set @s S_EnchantingEXPN 300000
execute if score @s S_Enchanting matches 21 run scoreboard players set @s S_EnchantingEXPN 400000
execute if score @s S_Enchanting matches 22 run scoreboard players set @s S_EnchantingEXPN 500000
execute if score @s S_Enchanting matches 23 run scoreboard players set @s S_EnchantingEXPN 600000
execute if score @s S_Enchanting matches 24 run scoreboard players set @s S_EnchantingEXPN 700000
execute if score @s S_Enchanting matches 25 run scoreboard players set @s S_EnchantingEXPN 800000
execute if score @s S_Enchanting matches 26 run scoreboard players set @s S_EnchantingEXPN 900000
execute if score @s S_Enchanting matches 27 run scoreboard players set @s S_EnchantingEXPN 1000000
execute if score @s S_Enchanting matches 28 run scoreboard players set @s S_EnchantingEXPN 1100000
execute if score @s S_Enchanting matches 29 run scoreboard players set @s S_EnchantingEXPN 1200000
execute if score @s S_Enchanting matches 30 run scoreboard players set @s S_EnchantingEXPN 1300000
execute if score @s S_Enchanting matches 31 run scoreboard players set @s S_EnchantingEXPN 1400000
execute if score @s S_Enchanting matches 32 run scoreboard players set @s S_EnchantingEXPN 1500000
execute if score @s S_Enchanting matches 33 run scoreboard players set @s S_EnchantingEXPN 1600000
execute if score @s S_Enchanting matches 34 run scoreboard players set @s S_EnchantingEXPN 1700000
execute if score @s S_Enchanting matches 35 run scoreboard players set @s S_EnchantingEXPN 1800000
execute if score @s S_Enchanting matches 36 run scoreboard players set @s S_EnchantingEXPN 1900000
execute if score @s S_Enchanting matches 37 run scoreboard players set @s S_EnchantingEXPN 2000000
execute if score @s S_Enchanting matches 38 run scoreboard players set @s S_EnchantingEXPN 2100000
execute if score @s S_Enchanting matches 39 run scoreboard players set @s S_EnchantingEXPN 2200000
execute if score @s S_Enchanting matches 40 run scoreboard players set @s S_EnchantingEXPN 2300000
execute if score @s S_Enchanting matches 41 run scoreboard players set @s S_EnchantingEXPN 2400000
execute if score @s S_Enchanting matches 42 run scoreboard players set @s S_EnchantingEXPN 2500000
execute if score @s S_Enchanting matches 43 run scoreboard players set @s S_EnchantingEXPN 2600000
execute if score @s S_Enchanting matches 44 run scoreboard players set @s S_EnchantingEXPN 2750000
execute if score @s S_Enchanting matches 45 run scoreboard players set @s S_EnchantingEXPN 2900000
execute if score @s S_Enchanting matches 46 run scoreboard players set @s S_EnchantingEXPN 3100000
execute if score @s S_Enchanting matches 47 run scoreboard players set @s S_EnchantingEXPN 3400000
execute if score @s S_Enchanting matches 48 run scoreboard players set @s S_EnchantingEXPN 3700000
execute if score @s S_Enchanting matches 49 run scoreboard players set @s S_EnchantingEXPN 4000000

execute if score @s S_Enchanting >= @s S_MaxEnchanting run scoreboard players set @s S_EnchantingEXPN 0