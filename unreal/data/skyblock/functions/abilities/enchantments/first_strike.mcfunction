execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.First_Strike 25
execute as @e[tag=target,tag=!first_strike] run scoreboard players operation @s multiplier += @p[tag=attacker] dummy
tag @e[tag=target,tag=!first_strike] add first_strike