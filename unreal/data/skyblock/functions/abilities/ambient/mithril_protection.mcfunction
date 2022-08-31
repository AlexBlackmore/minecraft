execute store result score @s health run data get entity @s Health
execute store result score @s max_health run attribute @s minecraft:generic.max_health get 0.6
execute if score @s health <= @s max_health run effect give @s minecraft:regeneration 15 0
