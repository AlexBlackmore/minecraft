tag @s add GrapplingRider
execute as @e[tag=GrapplingAnchor,limit=1,sort=nearest,distance=..1] at @s run function items:item_abilities/grappling_hook/anchor/movement
tp @s ~ ~ ~
tag @s remove GrapplingRider
