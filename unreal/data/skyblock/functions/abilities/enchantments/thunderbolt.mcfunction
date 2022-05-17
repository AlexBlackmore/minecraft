execute as @p[tag=attacker] run execute store result score @s attack_damage run data get entity @s SelectedItem.tag.Thunderbolt
execute as @p[tag=attacker] run scoreboard players set @s dummy 4

execute as @p[tag=attacker] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
execute as @p[tag=attacker] run scoreboard players operation @s attack_damage *= @s dummy
execute as @p[tag=attacker] run scoreboard players set @s dummy 100
execute as @p[tag=attacker] run scoreboard players operation @s attack_damage /= @s dummy

execute at @p[tag=attacker] run tag @e[type=#minecraft:hostile,distance=0..2] add thunderbolt
execute as @e[tag=thunderbolt] run scoreboard players operation @s multiplier += @p[tag=attacker] attack_damage
execute at @e[tag=thunderbolt] run summon lightning_bolt ~ ~ ~

tag @e[tag=!target,scores={multiplier=1..}] add target
tag @e[tag=thunderbolt] remove thunderbolt