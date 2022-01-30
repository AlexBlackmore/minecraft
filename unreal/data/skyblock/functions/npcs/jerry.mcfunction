scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 4
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=0}] run tellraw @s {"text":"<Jerry> Jerry!"}
execute if entity @e[tag=rng,scores={random=1}] run tellraw @s {"text":"<Jerry> Jerry..."}
execute if entity @e[tag=rng,scores={random=2}] run tellraw @s {"text":"<Jerry> Jerry."}
execute if entity @e[tag=rng,scores={random=3}] run tellraw @s {"text":"<Jerry> Jerry?"}
playsound minecraft:entity.villager.yes player @s

kill @e[tag=rng]
advancement revoke @s only skyblock:commands/npcs/jerry
