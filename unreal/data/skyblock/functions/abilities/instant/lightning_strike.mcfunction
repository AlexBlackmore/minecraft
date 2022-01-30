execute at @p[tag=ability] run tag @e[type=!player,distance=0..10,limit=1,sort=nearest] add target

scoreboard objectives add intelligence dummy "Intelligence"
scoreboard objectives add damage dummy "Damage"
scoreboard objectives add dummy dummy "Dummy"

function skyblock:get_intelligence

scoreboard players add @p[tag=ability] intelligence 100
scoreboard players set @e[tag=target] damage 8
execute as @p[tag=ability] run scoreboard players operation @e[tag=target] damage *= @p[tag=ability] intelligence

execute at @e[tag=target] run summon lightning_bolt ~ ~ ~

scoreboard players set @e[tag=target] dummy 100
execute as @e[tag=target] run scoreboard players operation @s damage /= @s dummy 
execute as @e[tag=target,scores={damage=1..}] run tellraw @p[tag=ability] ["",{"text":"LIGHTNING STRIKE! ","italic":true,"bold":true,"color":"gold"},{"score":{"name":"@s","objective":"damage"},"italic":false,"color":"red"},{"text":" damage","italic":false,"color":"red"}]
execute as @e[tag=target] run scoreboard players operation @s damage *= @s dummy 

function skyblock:deal_damage

xp add @p[tag=ability] -70 points
effect give @p[tag=ability] hunger 1
execute at @p[tag=ability] run playsound minecraft:entity.lightning_bolt.impact player @p

tag @e[tag=target] remove target
scoreboard objectives remove intelligence
scoreboard objectives remove damage
scoreboard objectives remove health
