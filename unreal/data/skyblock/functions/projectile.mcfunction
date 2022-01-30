execute at @e[tag=explosive_arrow] as @e[tag=explosive_arrow] run execute if entity @e[tag=shot,distance=0..2,nbt={inGround:1b}] run summon tnt ~ ~ ~ {Fuse:0}
execute at @e[tag=explosive_arrow] as @e[tag=explosive_arrow] run execute unless entity @e[tag=shot,distance=0..2] run summon tnt ~ ~ ~ {Fuse:0}

execute as @e[tag=projectile] positioned as @s run execute unless entity @e[tag=shot,distance=0..2] run kill @s
execute as @e[tag=projectile] positioned as @s run execute if entity @e[tag=shot,distance=0..2,nbt={inGround:1b}] run kill @s

execute if entity @e[tag=projectile] run schedule function skyblock:projectile 1t replace