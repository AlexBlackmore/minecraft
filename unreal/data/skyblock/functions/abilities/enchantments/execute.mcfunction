execute as @e[tag=target] run execute store result score @s max_health run attribute @s minecraft:generic.max_health get
execute as @e[tag=target] run execute store result score @s health run data get entity @s Health 1000
execute as @e[tag=target] run scoreboard players set @s dummy 1000

execute as @e[tag=target] run scoreboard players operation @s health /= @s max_health
execute as @e[tag=target] run scoreboard players operation @s dummy -= @s health

execute as @p[tag=attacker] run execute store result score @s dummy run data get entity @s SelectedItem.tag.Execute
execute as @e[tag=target] run scoreboard players operation @s dummy *= @p[tag=attacker] dummy
execute as @e[tag=target] run scoreboard players operation @s dummy += @s dummy
execute as @p[tag=attacker] run scoreboard players set @s dummy 100
execute as @e[tag=target] run scoreboard players operation @s dummy /= @p[tag=attacker] dummy

execute as @e[tag=target] run scoreboard players operation @s multiplier += @s dummy