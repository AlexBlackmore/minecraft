xp add @a[scores={points=1..}] 1 points
scoreboard players remove @a[scores={points=1..}] points 1
execute if entity @a[scores={points=1..}] run function skyblock:dynamic_xp