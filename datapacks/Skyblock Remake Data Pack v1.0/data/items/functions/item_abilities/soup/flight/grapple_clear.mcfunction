execute at @e[tag=GrapplingAnchor,distance=..15] if score @e[tag=GrapplingAnchor,distance=..1.5,sort=nearest,limit=1] UUID = @s UUID run kill @e[tag=GrapplingAnchor,distance=..1.5,sort=nearest]
effect clear @s minecraft:levitation