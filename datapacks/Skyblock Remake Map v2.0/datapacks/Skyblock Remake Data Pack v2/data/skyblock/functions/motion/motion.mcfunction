execute store result score x Motion run data get entity @s Pos[0] 10000
execute store result score y Motion run data get entity @s Pos[1] 10000
execute store result score z Motion run data get entity @s Pos[2] 10000
tp @s ^ ^ ^0.01
execute store result score dx Motion run data get entity @s Pos[0] 10000
execute store result score dy Motion run data get entity @s Pos[1] 10000
execute store result score dz Motion run data get entity @s Pos[2] 10000
tp @s ^ ^ ^-0.01
scoreboard players operation dx Motion -= x Motion
scoreboard players operation dy Motion -= y Motion
scoreboard players operation dz Motion -= z Motion
scoreboard players operation dx Motion *= speed Motion
scoreboard players operation dy Motion *= speed Motion
scoreboard players operation dz Motion *= speed Motion
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get dx Motion
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get dy Motion
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get dz Motion
tag @s remove Motion_target