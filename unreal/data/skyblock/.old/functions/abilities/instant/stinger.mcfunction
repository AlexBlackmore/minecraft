execute as @p[tag=bonus_damage] run execute store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get 3500
execute as @p[tag=bonus_damage] run scoreboard players operation @s damage += @s attack_damage
effect give @e[tag=target] slowness 6 3
effect give @e[tag=target] poison 6 4

scoreboard objectives add divisor dummy "Divisor"
scoreboard players set @p[tag=bonus_damage] divisor 100
execute as @p[tag=bonus_damage] run scoreboard players operation @s attack_damage /= @s divisor
scoreboard objectives remove divisor 
tellraw @p[tag=bonus_damage] ["",{"text":"STINGER!","bold":true,"color":"gold"},{"text":" +","color":"red"},{"score":{"name":"*","objective":"attack_damage"},"color":"red"},{"text":" damage!","color":"red"}]
xp add @p[tag=bonus_damage] -150 points