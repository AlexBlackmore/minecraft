scoreboard players set @s dummy 7
execute store result score @s time run time query gametime
scoreboard players operation @s time %= @a dummy

execute at @s[scores={time=0}] run particle minecraft:dust_color_transition 1 0.333 0.333 1 1 0.667 0 ~ ~ ~ 0.2 0 0.2 0 3 normal
execute at @s[scores={time=1}] run particle minecraft:dust_color_transition 1 0.667 0 1 1 1 0.333 ~ ~ ~ 0.2 0 0.2 0 3 normal
execute at @s[scores={time=2}] run particle minecraft:dust_color_transition 1 1 0.333 1 0.333 1 0.333 ~ ~ ~ 0.2 0 0.2 0 3 normal
execute at @s[scores={time=3}] run particle minecraft:dust_color_transition 0.333 1 0.333 1 0.333 1 1 ~ ~ ~ 0.2 0 0.2 0 3 normal
execute at @s[scores={time=4}] run particle minecraft:dust_color_transition 0.333 1 1 1 0.333 0.333 1 ~ ~ ~ 0.2 0 0.2 0 3 normal
execute at @s[scores={time=5}] run particle minecraft:dust_color_transition 0.333 0.333 1 1 1 0.333 1 ~ ~ ~ 0.2 0 0.2 0 3 normal
execute at @s[scores={time=6}] run particle minecraft:dust_color_transition 1 0.333 1 1 1 0.333 0.333 ~ ~ ~ 0.2 0 0.2 0 3 normal
