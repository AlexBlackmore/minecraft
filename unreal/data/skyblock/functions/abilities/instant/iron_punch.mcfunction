execute at @p[predicate=skyblock:golem_sword] run tag @e[type=!player,distance=0..3] add iron_punch

execute at @p[predicate=skyblock:golem_sword] run playsound minecraft:entity.iron_golem.attack player @p
execute at @p[predicate=skyblock:golem_sword] run particle minecraft:explosion_emitter ~ ~ ~

execute store result score @p[predicate=skyblock:golem_sword] damage run data get entity @p[predicate=skyblock:golem_sword] XpLevel
scoreboard players add @p[predicate=skyblock:golem_sword] damage 100
scoreboard players set @p[predicate=skyblock:golem_sword] attack_damage 50
scoreboard players operation @p[predicate=skyblock:golem_sword] damage *= @p[predicate=skyblock:golem_sword] attack_damage

execute as @e[tag=iron_punch] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=iron_punch] run execute if score @s health < @p[predicate=skyblock:golem_sword] damage run kill @s
execute as @e[tag=iron_punch] run scoreboard players operation @s health -= @p[predicate=skyblock:golem_sword] damage
execute as @e[tag=iron_punch] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

xp add @p[predicate=skyblock:golem_sword] -70 points
effect give @p[predicate=skyblock:golem_sword] hunger 3
tag @e[tag=iron_punch] remove iron_punch

function skyblock:abilities/reset_instant
