tag @p[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Frozen Scythe\",\"italic\":false,\"color\":\"aqua\"}"}}}}] add frozen_scythe

execute at @p[tag=frozen_scythe] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add ice_bolt

execute at @p[tag=frozen_scythe] run playsound minecraft:block.glass.break player @p

execute store result score @p[tag=frozen_scythe] damage run data get entity @p[tag=frozen_scythe] XpLevel 0.3
scoreboard players add @p[tag=frozen_scythe] damage 100
scoreboard players set @p[tag=frozen_scythe] attack_damage 200
scoreboard players operation @p[tag=frozen_scythe] damage *= @p[tag=frozen_scythe] attack_damage

execute store result score @e[tag=ice_bolt] health run data get entity @e[limit=1,tag=ice_bolt] Health 100
execute if score @e[limit=1,tag=ice_bolt] health < @p[tag=frozen_scythe] damage run kill @e[tag=ice_bolt]
scoreboard players operation @e[tag=ice_bolt] health -= @p[tag=frozen_scythe] damage
execute store result entity @e[limit=1,tag=ice_bolt] Health float 0.01 run scoreboard players get @e[limit=1,tag=ice_bolt] health

give @p[tag=frozen_scythe] snowball
xp add @p[tag=frozen_scythe] -50 points
effect give @e[tag=ice_bolt] slowness 5 3
tag @e[tag=ice_bolt] remove ice_bolt
tag @e[tag=frozen_scythe] remove frozen_scythe

function skyblock:abilities/reset_instant
