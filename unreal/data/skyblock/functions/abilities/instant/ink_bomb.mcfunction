tag @p[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Ink Wand\",\"italic\":false,\"color\":\"light_purple\"}"}}}}] add ink_wand

execute at @p[tag=ink_wand] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add ink_bomb
execute at @e[tag=ink_bomb] run tag @e[distance=0..1] add ink_bomb

execute at @p[tag=ink_wand] run playsound minecraft:entity.squid.squirt player @p

execute store result score @p[tag=ink_wand] damage run data get entity @p[tag=ink_wand] XpLevel
scoreboard players add @p[tag=ink_wand] damage 100
scoreboard players set @p[tag=ink_wand] attack_damage 2000
scoreboard players operation @p[tag=ink_wand] damage *= @p[tag=ink_wand] attack_damage

execute as @e[tag=ink_bomb] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=ink_bomb] run execute if score @s health < @p[tag=ink_wand] damage run kill @s
execute as @e[tag=ink_bomb] run scoreboard players operation @s health -= @p[tag=ink_wand] damage
execute as @e[tag=ink_bomb] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

give @p[tag=ink_wand] snowball
xp add @p[tag=ink_wand] -60 points
effect give @e[tag=ink_bomb] blindness 5 3
tag @e[tag=ink_bomb] remove ink_bomb
tag @p[tag=ink_wand] remove ink_wand

function skyblock:abilities/reset_instant
