execute as @e[tag=target] run execute store result score @s armor run data get entity @s Armor
execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Titan_Killer
execute as @e[tag=target] run scoreboard players operation @s armor *= @p[tag=attacker] dummy
execute as @e[tag=target] run scoreboard players operation @s armor *= @s armor
execute as @e[tag=target] run scoreboard players set @s dummy 10
execute as @e[tag=target] run scoreboard players operation @s armor /= @s dummy

execute as @e[tag=target] run scoreboard players operation @s multiplier += @s armor