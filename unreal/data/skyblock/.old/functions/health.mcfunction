scoreboard objectives add health dummy "Health"

execute as @e[type=#skyblock:hostile] run execute store result score @s health run data get entity @s Health
execute as @e[type=#skyblock:hostile] run data modify entity @s CustomName set value [{"nbt":"Name","entity":"@s","color":"red"}]