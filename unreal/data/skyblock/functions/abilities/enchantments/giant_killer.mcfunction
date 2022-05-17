execute as @e[tag=target] run execute store result score @s health run data get entity @s Health 10
execute as @p[tag=attacker] run execute store result score @s health run data get entity @s Health
execute as @e[tag=target] run scoreboard players operation @s health /= @p[tag=attacker] health

execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Giant_Killer
execute as @e[tag=target] run scoreboard players operation @s dummy *= @p[tag=attacker] dummy

execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Giant_Killer 5
execute as @e[tag=target] if score @s dummy > @p[tag=attacker] dummy run scoreboard players operation @s dummy = @p[tag=attacker] dummy
execute as @e[tag=target] run scoreboard players operation @s multiplier += @s dummy