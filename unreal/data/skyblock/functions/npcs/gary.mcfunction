scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 6
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=0}] run tellraw @s ["",{"text":"<Gary> Wow, I just love snow. I love it so much that I bought an industrial strength snow machine so that I can have snow on demand!","color":"white"}]
execute if entity @e[tag=rng,scores={random=1}] run tellraw @s ["",{"text":"<Gary> It's me, Gary.","color":"white"}]
execute if entity @e[tag=rng,scores={random=2}] run tellraw @s ["",{"text":"<Gary> Gary.","color":"white"}]
execute if entity @e[tag=rng,scores={random=3}] run tellraw @s ["",{"text":"<Gary> Gary?","color":"white"}]
execute if entity @e[tag=rng,scores={random=4}] run tellraw @s ["",{"text":"<Gary> Gary!","color":"white"}]
execute if entity @e[tag=rng,scores={random=5}] run tellraw @s ["",{"text":"<Gary> What are you talking to me for? The village needs your help!","color":"white"}]

playsound minecraft:entity.villager.yes player @s

kill @e[tag=rng]

advancement revoke @s only skyblock:commands/npcs/gary
