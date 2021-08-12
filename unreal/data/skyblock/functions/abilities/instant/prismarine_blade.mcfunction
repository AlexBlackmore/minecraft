execute at @p[predicate=skyblock:prismarine_blade] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add prismarine_blade

execute at @p[predicate=skyblock:prismarine_blade] run playsound minecraft:entity.experience_orb.pickup player @p

execute store result score @p[predicate=skyblock:prismarine_blade] attack_damage run attribute @p[predicate=skyblock:prismarine_blade] minecraft:generic.attack_damage get
scoreboard players add @p[predicate=skyblock:prismarine_blade] attack_damage 10
scoreboard players set @p[predicate=skyblock:prismarine_blade] damage 2
scoreboard players operation @p[predicate=skyblock:prismarine_blade] damage *= @p[predicate=skyblock:prismarine_blade] attack_damage

execute store result score @e[tag=prismarine_blade] health run data get entity @e[limit=1,tag=prismarine_blade] Health
execute if score @e[limit=1,tag=prismarine_blade] health < @p[predicate=skyblock:prismarine_blade] damage run kill @e[tag=prismarine_blade]
scoreboard players operation @e[tag=prismarine_blade] health -= @p[predicate=skyblock:prismarine_blade] damage
execute store result entity @e[limit=1,tag=prismarine_blade] Health float 1 run scoreboard players get @e[limit=1,tag=prismarine_blade] health

tag @e[tag=prismarine_blade] remove prismarine_blade

function skyblock:abilities/reset_instant
