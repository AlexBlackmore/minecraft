execute in skyblock:hub_island if entity @s[distance=0..] run tag @s add hub

scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 4
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=0}] run tellraw @s[tag=!hub] {"text":"<Jerry> Jerry!"}
execute if entity @e[tag=rng,scores={random=1}] run tellraw @s[tag=!hub] {"text":"<Jerry> Jerry..."}
execute if entity @e[tag=rng,scores={random=2}] run tellraw @s[tag=!hub] {"text":"<Jerry> Jerry."}
execute if entity @e[tag=rng,scores={random=3}] run tellraw @s[tag=!hub] {"text":"<Jerry> Jerry?"}
playsound minecraft:entity.villager.yes player @s[tag=!hub]

kill @e[tag=rng]

tellraw @s[tag=hub,predicate=!skyblock:sneaking] {"text":"<Jerry> Jerry's Workshop is under attack! Save the Jerrys' home and ensure all of Skyblock gets to receive their Gifts! Sneak to warp to Jerry's Workshop!"}
execute as @s[tag=hub,predicate=skyblock:sneaking] run function skyblock:teleports/to_winter_island
advancement revoke @s only skyblock:commands/npcs/jerry

tag @p[tag=hub] remove hub
