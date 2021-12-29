tag @p[nbt={Inventory:[{Slot:100b,tag:{Name:"Farmer Boots"}}]}] add farmer_boots
tag @p[nbt={Inventory:[{Slot:100b,tag:{Name:"Rancher's Boots"}}]}] add farmer_boots

execute as @p[tag=farmer_boots] run execute store result score @s movement_speed run data get entity @s XpLevel 4
execute as @p[tag=farmer_boots] run execute store result score @s dummy run attribute @s minecraft:generic.movement_speed modifier value get 42-29-11-75-77 100
execute as @p[tag=farmer_boots] run execute unless score @s movement_speed = @s dummy run tellraw @s ["",{"text":"[Farmer Boots: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"movement_speed"},"italic":true,"color":"gray"},{"text":"% Speed]","italic":true,"color":"gray"}]
attribute @p minecraft:generic.movement_speed modifier remove 42-29-11-75-77

attribute @p[tag=farmer_boots,level=5..9] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 0.20 multiply_base
attribute @p[tag=farmer_boots,level=10..14] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 0.40 multiply_base
attribute @p[tag=farmer_boots,level=15..19] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 0.60 multiply_base
attribute @p[tag=farmer_boots,level=20..24] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 0.80 multiply_base
attribute @p[tag=farmer_boots,level=25..29] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 1.00 multiply_base
attribute @p[tag=farmer_boots,level=30..34] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 1.20 multiply_base
attribute @p[tag=farmer_boots,level=35..39] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 1.40 multiply_base
attribute @p[tag=farmer_boots,level=40..44] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 1.60 multiply_base
attribute @p[tag=farmer_boots,level=45..49] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 1.80 multiply_base
attribute @p[tag=farmer_boots,level=50..54] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 2.00 multiply_base
attribute @p[tag=farmer_boots,level=55..59] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 2.20 multiply_base
attribute @p[tag=farmer_boots,level=60..] minecraft:generic.movement_speed modifier add 42-29-11-75-77 "Farmer Boots" 2.40 multiply_base


execute as @p[tag=farmer_boots] run execute store result score @s armor run data get entity @s XpLevel 0.4
execute as @p[tag=farmer_boots] run execute store result score @s dummy run attribute @s minecraft:generic.armor modifier value get 99-100-50-35-72
execute as @p[tag=farmer_boots] run execute unless score @s armor = @s dummy run tellraw @s ["",{"text":"[Farmer Boots: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"armor"},"italic":true,"color":"gray"},{"text":" Armor]","italic":true,"color":"gray"}]
attribute @p minecraft:generic.armor modifier remove 99-100-50-35-72

attribute @p[tag=farmer_boots,level=5..9] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 2 add
attribute @p[tag=farmer_boots,level=10..14] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 4 add
attribute @p[tag=farmer_boots,level=15..19] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 6 add
attribute @p[tag=farmer_boots,level=20..24] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 8 add
attribute @p[tag=farmer_boots,level=25..29] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 10 add
attribute @p[tag=farmer_boots,level=30..34] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 12 add
attribute @p[tag=farmer_boots,level=35..39] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 14 add
attribute @p[tag=farmer_boots,level=40..44] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 16 add
attribute @p[tag=farmer_boots,level=45..49] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 18 add
attribute @p[tag=farmer_boots,level=50..54] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 20 add
attribute @p[tag=farmer_boots,level=55..59] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 22 add
attribute @p[tag=farmer_boots,level=60..] minecraft:generic.armor modifier add 99-100-50-35-72 "Farmer Boots" 24 add

effect give @p[nbt={Inventory:[{Slot:100b,tag:{Name:"Rancher's Boots"}}]}] slow_falling 11

tag @p[tag=farmer_boots] remove farmer_boots

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/farmer_boots=true}] run schedule function skyblock:abilities/ambient/farmer_boots 2s replace

