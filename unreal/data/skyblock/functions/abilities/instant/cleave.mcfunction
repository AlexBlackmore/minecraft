tag @p[predicate=skyblock:cleaver] add cleave_player
tag @p[predicate=skyblock:super_cleaver] add cleave_player
tag @p[predicate=skyblock:hyper_cleaver] add cleave_player

execute at @p[tag=cleave_player] run playsound minecraft:entity.experience_orb.pickup player @p
execute at @p[tag=cleave_player] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add cleave
execute at @p[tag=cleave_player] run tag @e[type=!player,tag=!cleave,distance=0..3] add cleave_radius
execute at @p[predicate=skyblock:hyper_cleaver] run tag @e[type=!player,tag=!cleave,distance=0..4] add cleave_radius

execute store result score @p[tag=cleave_player] attack_damage run attribute @p[tag=cleave_player] minecraft:generic.attack_damage get
scoreboard players operation @p[tag=cleave_player] damage = @p[tag=cleave_player] attack_damage
scoreboard players add @p[predicate=skyblock:cleaver] damage 8
scoreboard players add @p[predicate=skyblock:super_cleaver] damage 17
scoreboard players add @p[predicate=skyblock:hyper_cleaver] damage 29

execute as @e[tag=cleave_radius] run execute store result score @s health run data get entity @s Health 2.5
execute as @e[tag=cleave_radius] run execute if score @s health < @p[tag=cleave_player] damage run kill @s
execute as @e[tag=cleave_radius] run scoreboard players operation @s health -= @p[tag=cleave_player] damage
execute as @e[tag=cleave_radius] run execute store result entity @s Health float 0.4 run scoreboard players get @s health

tag @e[tag=cleave] remove cleave
tag @e[tag=cleave_radius] remove cleave_radius
tag @e[tag=cleave_player] remove cleave_player

function skyblock:abilities/reset_instant
