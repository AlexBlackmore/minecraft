tag @p[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Pigman Sword\",\"italic\":false,\"color\":\"gold\"}"}}}}] add pigman_sword

execute at @p[tag=pigman_sword] run tag @e[type=!player,distance=0..5] add burning_souls

execute at @p[tag=pigman_sword] run playsound minecraft:block.fire.extinguish player @p

execute store result score @p[tag=pigman_sword] damage run data get entity @p[tag=pigman_sword] XpLevel 0.1
scoreboard players add @p[tag=pigman_sword] damage 100
scoreboard players set @p[tag=pigman_sword] attack_damage 6000
scoreboard players operation @p[tag=pigman_sword] damage *= @p[tag=pigman_sword] attack_damage

execute as @e[tag=burning_souls] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=burning_souls] run execute if score @s health < @p[tag=pigman_sword] damage run kill @s
execute as @e[tag=burning_souls] run scoreboard players operation @s health -= @p[tag=pigman_sword] damage
execute as @e[tag=burning_souls] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

execute at @e[tag=burning_souls] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1}

xp add @p[tag=pigman_sword] -400 points
effect give @p[tag=pigman_sword] hunger 5
tag @e[tag=burning_souls] remove burning_souls
tag @e[tag=pigman_sword] remove pigman_sword

function skyblock:abilities/reset_instant
