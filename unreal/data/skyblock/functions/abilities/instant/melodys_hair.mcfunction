scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 21
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=0}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.0
execute if entity @e[tag=rng,scores={random=1}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.1
execute if entity @e[tag=rng,scores={random=2}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.2
execute if entity @e[tag=rng,scores={random=3}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.3
execute if entity @e[tag=rng,scores={random=4}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.4
execute if entity @e[tag=rng,scores={random=5}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.5
execute if entity @e[tag=rng,scores={random=6}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.6
execute if entity @e[tag=rng,scores={random=7}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.7
execute if entity @e[tag=rng,scores={random=8}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.8
execute if entity @e[tag=rng,scores={random=9}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 0.9
execute if entity @e[tag=rng,scores={random=10}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.0
execute if entity @e[tag=rng,scores={random=11}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.1
execute if entity @e[tag=rng,scores={random=12}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.2
execute if entity @e[tag=rng,scores={random=13}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.3
execute if entity @e[tag=rng,scores={random=14}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.4
execute if entity @e[tag=rng,scores={random=15}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.5
execute if entity @e[tag=rng,scores={random=16}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.6
execute if entity @e[tag=rng,scores={random=17}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.7
execute if entity @e[tag=rng,scores={random=18}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.8
execute if entity @e[tag=rng,scores={random=19}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 1.9
execute if entity @e[tag=rng,scores={random=20}] run playsound minecraft:block.note_block.harp player @p[tag=ability] ~ ~ ~ 100 2.0

execute at @p[tag=ability] run particle minecraft:note ~ ~1 ~ 1 1 1 10 10

kill @e[tag=rng]

