tag @p[advancements={skyblock:commands/instant/skeleton_hat=true}] add skeleton_hat
execute at @p[tag=skeleton_hat] run playsound minecraft:entity.experience_orb.pickup player @p

execute at @p[tag=skeleton_hat] run tag @e[nbt={HurtTime:10s},limit=1,sort=nearest] add skeleton_hat_mob
execute at @e[tag=skeleton_hat_mob] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:5,Potion:"harming",Radius:8}
execute at @e[tag=skeleton_hat_mob] run tag @e[type=!player,type=!area_effect_cloud,distance=0..8] add skeleton_hat_mob

execute at @p[advancements={skyblock:commands/instant/skeleton_hat_mob=true}] run playsound minecraft:entity.experience_orb.pickup player @p

scoreboard objectives add xp_level dummy "Xp Level"
scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add damage dummy "Damage"

execute store result score @p[tag=skeleton_hat] xp_level run data get entity @p[tag=skeleton_hat] XpLevel
scoreboard players add @p[tag=skeleton_hat] xp_level 100
scoreboard players set @p[tag=skeleton_hat] damage 10
scoreboard players operation @p[tag=skeleton_hat] damage *= @p[tag=skeleton_hat] xp_level

execute as @e[tag=skeleton_hat_mob] run execute store result score @s health run data get entity @s Health 100
execute as @e[tag=skeleton_hat_mob] run execute if score @s health < @p[tag=skeleton_hat] damage run kill @s
execute as @e[tag=skeleton_hat_mob] run scoreboard players operation @s health -= @p[tag=skeleton_hat] damage
execute as @e[tag=skeleton_hat_mob] run execute store result entity @s Health float 0.01 run scoreboard players get @s health

scoreboard players set @p[tag=skeleton_hat] xp_level 100
scoreboard players operation @p[tag=skeleton_hat] damage /= @p[tag=skeleton_hat] xp_level
tellraw @p[tag=skeleton_hat] ["",{"text":"[SKeleton Hat: Dealt ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

scoreboard objectives remove xp_level
scoreboard objectives remove damage
scoreboard objectives remove dummy

tag @e[tag=skeleton_hat_mob] remove skeleton_hat_mob
advancement revoke @p[tag=skeleton_hat] only skyblock:commands/instant/skeleton_hat
tag @p[tag=skeleton_hat] remove skeleton_hat