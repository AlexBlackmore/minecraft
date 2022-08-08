attribute @s[level=5..9] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 4 add
attribute @s[level=10..14] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 8 add
attribute @s[level=15..19] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 12 add
attribute @s[level=20..24] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 16 add
attribute @s[level=25..29] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 20 add
attribute @s[level=30..34] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 24 add
attribute @s[level=35..39] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 28 add
attribute @s[level=40..44] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 32 add
attribute @s[level=45..49] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 36 add
attribute @s[level=50..] minecraft:generic.max_health modifier add 37-2-44-27-99 "Lantern Helmet" 40 add

attribute @s[level=5..9] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 2 add
attribute @s[level=10..14] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 4 add
attribute @s[level=15..19] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 6 add
attribute @s[level=20..24] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 8 add
attribute @s[level=25..29] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 10 add
attribute @s[level=30..34] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 12 add
attribute @s[level=35..39] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 14 add
attribute @s[level=40..44] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 16 add
attribute @s[level=45..49] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 18 add
attribute @s[level=50..] minecraft:generic.armor modifier add 37-38-41-44-43 "Lantern Helmet" 20 add

execute store result score @s dummy run data get entity @s XpLevel 0.2
execute if score @s dummy matches 10.. run scoreboard players set @s dummy 10
scoreboard players operation @s armor = @s dummy
scoreboard players operation @s max_health = @s dummy

scoreboard players set @s dummy 2
scoreboard players operation @s armor *= @s dummy
scoreboard players operation @s max_health *= @s dummy
scoreboard players operation @s max_health *= @s dummy

tellraw @s ["",{"text":"[Lantern Helmet: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"armor"},"italic":true,"color":"gray"},{"text":" Armor, +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"max_health"},"italic":true,"color":"gray"},{"text":" Max Health]","italic":true,"color":"gray"}]
