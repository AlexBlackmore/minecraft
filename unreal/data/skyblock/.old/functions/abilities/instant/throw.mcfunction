scoreboard players set @e[type=!player] dummy 0
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^1 {NoGravity:true,Tags:["thrown_axe"]}
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^2 {NoGravity:true,Tags:["thrown_axe"]}
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^3 {NoGravity:true,Tags:["thrown_axe"]}
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^4 {NoGravity:true,Tags:["thrown_axe"]}
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^5 {NoGravity:true,Tags:["thrown_axe"]}
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^6 {NoGravity:true,Tags:["thrown_axe"]}
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^7 {NoGravity:true,Tags:["thrown_axe"]}
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^8 {NoGravity:true,Tags:["thrown_axe"]}
execute at @p[tag=bonus_damage] run summon minecraft:armor_stand ^ ^ ^9 {NoGravity:true,Tags:["thrown_axe"]}

execute at @e[tag=thrown_axe] run tag @e[type=#skyblock:hostile,distance=0..1] add throw
execute at @e[tag=thrown_axe] run scoreboard players add @e[tag=throw,distance=0..1] dummy 10

kill @e[tag=thrown_axe]

item modify entity @p[tag=bonus_damage] weapon.mainhand skyblock:increase_vanishing_level
execute as @p[tag=bonus_damage] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:vanishing_curse"}].lvl
item modify entity @p[tag=bonus_damage,scores={dummy=16..}] weapon.mainhand skyblock:decrease_vanishing_level

tag @p[tag=bonus_damage,scores={dummy=1},level=3..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=2},level=4..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=3},level=6..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=4},level=7..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=5},level=8..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=6},level=9..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=7..8},level=10..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=9},level=11..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=10},level=12..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=11..12},level=13..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=13..14},level=14..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=15},level=15..] add throw_success
tag @p[tag=bonus_damage,scores={dummy=16},level=16..] add throw_success

xp add @p[tag=throw_success,scores={dummy=1}] -20 points
xp add @p[tag=throw_success,scores={dummy=2}] -40 points
xp add @p[tag=throw_success,scores={dummy=3}] -60 points
xp add @p[tag=throw_success,scores={dummy=4}] -80 points
xp add @p[tag=throw_success,scores={dummy=5}] -100 points
xp add @p[tag=throw_success,scores={dummy=6}] -120 points
xp add @p[tag=throw_success,scores={dummy=7}] -140 points
xp add @p[tag=throw_success,scores={dummy=8}] -160 points
xp add @p[tag=throw_success,scores={dummy=9}] -180 points
xp add @p[tag=throw_success,scores={dummy=10}] -200 points
xp add @p[tag=throw_success,scores={dummy=11}] -220 points
xp add @p[tag=throw_success,scores={dummy=12}] -240 points
xp add @p[tag=throw_success,scores={dummy=13}] -260 points
xp add @p[tag=throw_success,scores={dummy=14}] -280 points
xp add @p[tag=throw_success,scores={dummy=15}] -300 points
xp add @p[tag=throw_success,scores={dummy=16}] -320 points

execute unless entity @p[tag=bonus_damage,tag=throw_success] run tag @e[tag=throw] remove throw 
effect give @e[tag=throw] glowing 1

execute as @e[tag=throw] run scoreboard players operation @s dummy *= @p[tag=bonus_damage] dummy

execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
execute as @e[tag=throw] run scoreboard players operation @s dummy *= @p[tag=bonus_damage] attack_damage

execute as @e[tag=throw] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=throw] run execute if score @s health < @s dummy run kill @s
execute as @e[tag=throw] run scoreboard players operation @s health -= @s dummy
execute as @e[tag=throw] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

tellraw @p[tag=throw_success] ["",{"text":"THROW! ","bold":true,"color":"gold"},{"score":{"name":"*","objective":"dummy"},"color":"white"},{"text":"0% damage]","color":"white"}]

tag @e[tag=throw] remove throw
tag @e[tag=throw_success] remove throw_success 