attribute @s[level=5..9] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 2 add
attribute @s[level=10..14] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 4 add
attribute @s[level=15..19] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 6 add
attribute @s[level=20..24] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 8 add
attribute @s[level=25..29] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 10 add
attribute @s[level=30..34] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 12 add
attribute @s[level=35..39] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 14 add
attribute @s[level=40..44] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 16 add
attribute @s[level=45..49] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 18 add
attribute @s[level=50..] minecraft:generic.armor modifier add 95-33-64-57-14 "Farmer Boots" 20 add

attribute @s[level=5..9] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.04 multiply_base
attribute @s[level=10..14] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.08 multiply_base
attribute @s[level=15..19] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.12 multiply_base
attribute @s[level=20..24] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.16 multiply_base
attribute @s[level=25..29] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.20 multiply_base
attribute @s[level=30..34] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.24 multiply_base
attribute @s[level=35..39] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.28 multiply_base
attribute @s[level=40..44] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.32 multiply_base
attribute @s[level=45..49] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.36 multiply_base
attribute @s[level=50..] minecraft:generic.movement_speed modifier add 27-67-83-17-10 "Farmer Boots" 0.40 multiply_base

execute store result score @s dummy run data get entity @s XpLevel 0.2
execute if score @s dummy matches 10.. run scoreboard players set @s dummy 10
scoreboard players operation @s armor = @s dummy
scoreboard players operation @s movement_speed = @s dummy

scoreboard players set @s dummy 2
scoreboard players operation @s armor *= @s dummy
scoreboard players operation @s movement_speed *= @s dummy
scoreboard players operation @s movement_speed *= @s dummy

tellraw @s ["",{"text":"[Farmer Boots: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"armor"},"italic":true,"color":"gray"},{"text":" Armor, +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"movement_speed"},"italic":true,"color":"gray"},{"text":"% Speed]","italic":true,"color":"gray"}]
