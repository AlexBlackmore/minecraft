scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 3
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy


execute if entity @e[tag=rng,scores={random=0}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Jotraeline Greatforge","color":"dark_green"},{"text":"> Drills are sweet! Too bad you don't have one. I hear you can create them in the ","color":"white"},{"text":"Forge","color":"gold"},{"text":"!","color":"white"}]
execute if entity @e[tag=rng,scores={random=1}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Jotraeline Greatforge","color":"dark_green"},{"text":"> What are you doing talking to me without a ","color":"white"},{"text":"Drill","color":"green"},{"text":"? Come back when you have one!","color":"white"}]
execute if entity @e[tag=rng,scores={random=2}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"Jotraeline Greatforge","color":"dark_green"},{"text":"> Come back to me when you have a ","color":"white"},{"text":"Drill","color":"green"},{"text":" in your inventory!","color":"white"}]
playsound minecraft:entity.villager.no player @s

kill @e[tag=rng]
advancement revoke @s only skyblock:commands/npcs/jotraeline_greatforge/no_drill
