tag @p[predicate=skyblock:machine_gun_bow_rare] add machine_gun_bow_player
tag @p[predicate=skyblock:machine_gun_bow_epic] add machine_gun_bow_player
execute at @p[tag=machine_gun_bow_player] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add rapid_fire

execute at @p[tag=machine_gun_bow_player] run playsound minecraft:entity.experience_orb.pickup player @p

execute store result score @p[tag=machine_gun_bow_player] attack_damage run attribute @p[tag=machine_gun_bow_player] minecraft:generic.attack_damage get
scoreboard players add @p[predicate=skyblock:machine_gun_bow_rare] attack_damage 5
scoreboard players add @p[predicate=skyblock:machine_gun_bow_epic] attack_damage 10
scoreboard players operation @p[tag=machine_gun_bow_player] damage = @p[tag=machine_gun_bow_player] attack_damage
scoreboard players add @p[predicate=skyblock:machine_gun_bow_rare] damage 15
scoreboard players add @p[predicate=skyblock:machine_gun_bow_epic] damage 37

execute store result score @e[tag=rapid_fire] health run data get entity @e[limit=1,tag=rapid_fire] Health 1.43
execute if score @e[limit=1,tag=rapid_fire] health < @p[tag=machine_gun_bow_player] damage run kill @e[tag=rapid_fire]
scoreboard players operation @e[tag=rapid_fire] health -= @p[tag=machine_gun_bow_player] damage
execute store result entity @e[limit=1,tag=rapid_fire] Health float 0.7 run scoreboard players get @e[limit=1,tag=rapid_fire] health

tag @e[tag=rapid_fire] remove rapid_fire
tag @p[tag=machine_gun_bow_player] remove machine_gun_bow_player

function skyblock:abilities/reset_instant
