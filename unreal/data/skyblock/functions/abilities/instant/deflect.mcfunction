tag @p[advancements={skyblock:commands/abilities/deflect=true}] add attacker
execute at @p[tag=attacker] run tag @e[limit=1,sort=nearest,type=#minecraft:hostile] add target
effect give @e[tag=target] glowing

scoreboard objectives add damage dummy "Damage"

execute as @p[tag=attacker] run execute store result score @s damage run attribute @s generic.attack_damage get 33

function skyblock:deal_damage

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=attacker] divisor 100
execute as @p[tag=attacker] run scoreboard players operation @s damage /= @s divisor
tellraw @p[tag=attacker] ["",{"text":"[Deflect: ","italic":true,"color":"gray"},{"score":{"name":"*","objective":"damage"},"italic":true,"color":"gray"},{"text":" damage]","italic":true,"color":"gray"}]
scoreboard objectives remove divisor
scoreboard objectives remove health
scoreboard objectives remove absorption
scoreboard objectives remove damage

advancement revoke @p[tag=attacker] only skyblock:commands/abilities/deflect
tag @p[tag=attacker] remove attacker
tag @e[tag=target] remove target