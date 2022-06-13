scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 3
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=0}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Sherry","color":"red"},{"text":"> For the holidays, we're offering exclusive doorbuster deals for the whole family to enjoy!","color":"white"}]
execute if entity @e[tag=rng,scores={random=1}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Sherry","color":"red"},{"text":"> Check out our new ","color":"white"},{"text":"Winter Rod","color":"aqua"},{"text":", which is great for ","color":"white"},{"text":"ice fishing","color":"aqua"},{"text":"!","color":"white"}]
execute if entity @e[tag=rng,scores={random=2}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Sherry","color":"red"},{"text":"> We are also offering ","color":"white"},{"text":"Frosty the Snow Blaster","color":"light_purple"},{"text":", an upgraded ","color":"white"},{"text":"Snow Cannon","color":"aqua"},{"text":" that shoots much farther!","color":"white"}]

playsound minecraft:entity.villager.yes player @s

kill @e[tag=rng]

advancement revoke @s only skyblock:commands/npcs/sherry
