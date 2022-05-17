execute as @p[tag=attacker] run execute store result score @s attack_damage run data get entity @s SelectedItem.tag.Thunderlord
execute as @p[tag=attacker] run scoreboard players set @s dummy 8

execute as @p[tag=attacker] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
execute as @p[tag=attacker] run scoreboard players operation @s attack_damage *= @s dummy
execute as @p[tag=attacker] run scoreboard players set @s dummy 100
execute as @p[tag=attacker] run scoreboard players operation @s attack_damage /= @s dummy

execute as @e[tag=target] run scoreboard players operation @s multiplier += @p[tag=attacker] attack_damage
execute at @e[tag=target] run summon lightning_bolt ~ ~ ~
