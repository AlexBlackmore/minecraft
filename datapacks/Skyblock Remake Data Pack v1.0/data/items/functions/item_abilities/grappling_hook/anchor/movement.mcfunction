execute at @a[tag=GrapplingRider] if entity @e[tag=GrapplingTempAnchor,limit=1,sort=nearest,distance=.12..] run function items:item_abilities/grappling_hook/anchor/repos



execute as @e[tag=GrapplingTempAnchor,distance=..30,sort=nearest] if score @s PlayerID = @e[tag=GrapplingAnchor,limit=1,sort=nearest,distance=..1] PlayerID run kill @s 
summon minecraft:area_effect_cloud ~ ~ ~ {OnGround:0b,Tags:["GrapplingTempAnchor"],Duration:2}
scoreboard players operation @e[tag=GrapplingTempAnchor,limit=1,sort=nearest] PlayerID = @s PlayerID