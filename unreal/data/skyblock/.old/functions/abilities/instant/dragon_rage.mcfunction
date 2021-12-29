tag @p[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Aspect of the Dragons\",\"italic\":false,\"color\":\"gold\"}"}}}}] add aspect_of_the_dragons

execute at @p[tag=aspect_of_the_dragons] run summon armor_stand ^ ^ ^3 {NoGravity:true,Tags:["dragon_rage_marker"]}
execute at @e[tag=dragon_rage_marker] run tag @e[type=!player,distance=0..3] add dragon_rage

execute at @p[tag=aspect_of_the_dragons] run playsound minecraft:entity.blaze.shoot player @p

execute store result score @p[tag=aspect_of_the_dragons] damage run data get entity @p[tag=aspect_of_the_dragons] XpLevel 0.1
scoreboard players add @p[tag=aspect_of_the_dragons] damage 100
scoreboard players set @p[tag=aspect_of_the_dragons] attack_damage 2400
scoreboard players operation @p[tag=aspect_of_the_dragons] damage *= @p[tag=aspect_of_the_dragons] attack_damage

execute as @e[tag=dragon_rage] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=dragon_rage] run execute if score @s health < @p[tag=aspect_of_the_dragons] damage run kill @s
execute as @e[tag=dragon_rage] run scoreboard players operation @s health -= @p[tag=aspect_of_the_dragons] damage
execute as @e[tag=dragon_rage] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

execute at @e[tag=dragon_rage] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire"},Time:1}

xp add @p[tag=aspect_of_the_dragons] -100 points
effect give @p[tag=aspect_of_the_dragons] hunger 1
kill @e[tag=dragon_rage_marker]
tag @e[tag=dragon_rage] remove dragon_rage
tag @e[tag=aspect_of_the_dragons] remove aspect_of_the_dragons

function skyblock:abilities/reset_instant
