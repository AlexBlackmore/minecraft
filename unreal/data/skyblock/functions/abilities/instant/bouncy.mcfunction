execute at @e[tag=target] if predicate skyblock:random_chance/50 run tag @e[type=#minecraft:monster,limit=1,sort=nearest,tag=!target] add bouncy1
execute as @e[tag=bouncy1] run scoreboard players add @s multiplier 85

execute at @e[tag=bouncy1] if predicate skyblock:random_chance/50 run tag @e[type=#minecraft:monster,limit=1,sort=nearest,tag=!bouncy1] add bouncy2
execute as @e[tag=bouncy2] run scoreboard players add @s multiplier 70

execute at @e[tag=bouncy2] if predicate skyblock:random_chance/50 run tag @e[type=#minecraft:monster,limit=1,sort=nearest,tag=!bouncy2] add bouncy3
execute as @e[tag=bouncy3] run scoreboard players add @s multiplier 55

execute at @e[tag=bouncy3] if predicate skyblock:random_chance/50 run tag @e[type=#minecraft:monster,limit=1,sort=nearest,tag=!bouncy3] add bouncy4
execute as @e[tag=bouncy4] run scoreboard players add @s multiplier 40

tag @e[tag=bouncy1] add target
tag @e[tag=bouncy2] add target
tag @e[tag=bouncy3] add target
tag @e[tag=bouncy4] add target

tag @e[tag=bouncy1] remove bouncy1
tag @e[tag=bouncy2] remove bouncy2
tag @e[tag=bouncy3] remove bouncy3
tag @e[tag=bouncy4] remove bouncy4