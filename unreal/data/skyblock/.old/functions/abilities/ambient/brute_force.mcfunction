tag @p[advancements={skyblock:commands/ambient/brute_force=true}] add brute_force

scoreboard objectives add dummy dummy "Dummy"

execute store result score @p[tag=brute_force] movement_speed run attribute @p[tag=movement_speed] minecraft:generic.movement_speed get 40
scoreboard players set @p[tag=brute_force] dummy 10
scoreboard players operation @p[tag=brute_force] dummy *= @p[tag=brute_force] movement_speed

execute as @p[tag=brute_force] run execute store result score @s dummy run attribute @s minecraft:generic.attack_damage modifier value get 76-92-85-11-86
execute as @p[tag=brute_force] run execute unless score @s movement_speed = @s dummy run tellraw @s ["",{"text":"[Brute Force: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":"% Attack Damage]","italic":true,"color":"gray"}]
attribute @p minecraft:generic.attack_damage modifier remove 76-92-85-11-86

attribute @p[tag=brute_force,scores={movement_speed=1}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.1 multiply
attribute @p[tag=brute_force,scores={movement_speed=2}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.2 multiply
attribute @p[tag=brute_force,scores={movement_speed=3}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.3 multiply
attribute @p[tag=brute_force,scores={movement_speed=4}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.4 multiply
attribute @p[tag=brute_force,scores={movement_speed=5}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.5 multiply
attribute @p[tag=brute_force,scores={movement_speed=6}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.6 multiply
attribute @p[tag=brute_force,scores={movement_speed=7}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.7 multiply
attribute @p[tag=brute_force,scores={movement_speed=8}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.8 multiply
attribute @p[tag=brute_force,scores={movement_speed=9}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 0.9 multiply
attribute @p[tag=brute_force,scores={movement_speed=10}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.0 multiply
attribute @p[tag=brute_force,scores={movement_speed=11}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.1 multiply
attribute @p[tag=brute_force,scores={movement_speed=12}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.2 multiply
attribute @p[tag=brute_force,scores={movement_speed=13}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.3 multiply
attribute @p[tag=brute_force,scores={movement_speed=14}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.4 multiply
attribute @p[tag=brute_force,scores={movement_speed=15}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.5 multiply
attribute @p[tag=brute_force,scores={movement_speed=16}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.6 multiply
attribute @p[tag=brute_force,scores={movement_speed=17}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.7 multiply
attribute @p[tag=brute_force,scores={movement_speed=18}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.8 multiply
attribute @p[tag=brute_force,scores={movement_speed=19}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 1.9 multiply
attribute @p[tag=brute_force,scores={movement_speed=20..}] minecraft:generic.attack_damage modifier add 76-92-85-11-86 "Brute Force" 2.0 multiply

tag @p[tag=brute_force] remove brute_force

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/brute_force=true}] run schedule function skyblock:abilities/ambient/brute_force 2s replace