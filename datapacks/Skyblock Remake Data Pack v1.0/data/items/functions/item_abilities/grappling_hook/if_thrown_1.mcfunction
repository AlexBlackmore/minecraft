tag @e[tag=GrapplingWatch] add GrapplingSee
execute as @e[tag=GrapplingWatch] at @e[tag=GrapplingHook,distance=..33] if score @s PlayerID = @e[tag=GrapplingHook,limit=1,sort=nearest] PlayerID run tag @s remove GrapplingSee
execute if entity @e[tag=GrapplingWatch,tag=GrapplingSee,distance=..2,sort=nearest,limit=1] run tag @s remove GrapplingPlayer
execute if entity @e[tag=GrapplingWatch,tag=GrapplingSee,distance=..2,sort=nearest,limit=1] run tag @s remove GrapplingPass1
execute unless entity @s[scores={I_GrappleCool=1..}] if entity @e[tag=GrapplingWatch,tag=GrapplingSee,distance=..2,sort=nearest,limit=1] run function items:item_abilities/grappling_hook/throw/prep
execute if entity @s[scores={I_GrappleCool=1..}] if entity @e[tag=GrapplingWatch,tag=GrapplingSee,distance=..2,sort=nearest,limit=1] run tellraw @s {"text":"Whow! Slow down there!","color":"red"}
