execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Triple_Strike 10
execute as @e[tag=target,tag=!triple_strike3] run scoreboard players operation @s multiplier += @p[tag=attacker] dummy

tag @e[tag=target,tag=triple_strike2] add triple_strike3
tag @e[tag=target,tag=triple_strike2,tag=triple_strike3] remove triple_strike2

tag @e[tag=target,tag=triple_strike1] add triple_strike2
tag @e[tag=target,tag=triple_strike1,tag=triple_strike2] remove triple_strike1

tag @e[tag=target,tag=!triple_strike1,tag=!triple_strike2,tag=!triple_strike3] add triple_strike1