tag @p[advancements={skyblock:commands/instant/spiky=true}] add pufferfish_hat
execute at @p[tag=pufferfish_hat] run playsound minecraft:entity.puffer_fish.blow_out player @p

execute at @p[tag=pufferfish_hat] run tag @e[type=!player,distance=0..5] add spiky

scoreboard objectives add attack_damage dummy "Attack Damage"
scoreboard objectives add health dummy "Health"
scoreboard objectives add dummy dummy "Dummy"

execute store result score @p[tag=pufferfish_hat] attack_damage run attribute @p[tag=pufferfish_hat] minecraft:generic.attack_damage get 2
scoreboard players add @p[tag=pufferfish_hat] attack_damage 20

execute as @e[tag=spiky] run execute store result score @s health run data get entity @s Health 10
execute as @e[tag=spiky] run execute if score @s health < @p[tag=pufferfish_hat] damage run kill @s
execute as @e[tag=spiky] run scoreboard players operation @s health -= @p[tag=pufferfish_hat] damage
execute as @e[tag=spiky] run execute store result entity @s Health float 0.1 run scoreboard players get @s health

scoreboard players set @p[tag=pufferfish_hat] dummy 10
scoreboard players operation @p[tag=pufferfish_hat] attack_damage /= @p[tag=pufferfish_hat] dummy
tellraw @p[tag=pufferfish_hat] ["",{"text":"[Spiky: Dealt ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"attack_damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]

advancement revoke @p[tag=pufferfish_hat] only skyblock:commands/instant/spiky
tag @e[tag=pufferfish_hat] remove pufferfish_hat
tag @e[tag=spiky] remove spiky

