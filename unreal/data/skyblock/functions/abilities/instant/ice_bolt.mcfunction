execute at @p[predicate=skyblock:frozen_scythe] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add ice_bolt

execute at @p[predicate=skyblock:frozen_scythe] run playsound minecraft:entity.experience_orb.pickup player @p

execute store result score @p[predicate=skyblock:frozen_scythe] damage run data get entity @p[predicate=skyblock:frozen_scythe] XpLevel 3
scoreboard players add @p[predicate=skyblock:frozen_scythe] damage 1000
scoreboard players set @p[predicate=skyblock:frozen_scythe] attack_damage 200
scoreboard players operation @p[predicate=skyblock:frozen_scythe] damage *= @p[predicate=skyblock:frozen_scythe] attack_damage

execute store result score @e[tag=ice_bolt] health run data get entity @e[limit=1,tag=ice_bolt] Health 1000
execute if score @e[limit=1,tag=ice_bolt] health < @p[predicate=skyblock:frozen_scythe] damage run kill @e[tag=ice_bolt]
scoreboard players operation @e[tag=ice_bolt] health -= @p[predicate=skyblock:frozen_scythe] damage
execute store result entity @e[limit=1,tag=ice_bolt] Health float 0.001 run scoreboard players get @e[limit=1,tag=ice_bolt] health

xp add @p[predicate=skyblock:frozen_scythe] -50 points
effect give @e[tag=ice_bolt] slowness 5 3
tag @e[tag=ice_bolt] remove ice_bolt

function skyblock:abilities/reset_instant
