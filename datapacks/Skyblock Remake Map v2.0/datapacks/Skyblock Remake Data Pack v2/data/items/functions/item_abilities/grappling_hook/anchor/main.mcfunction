execute as @e[tag=GrapplingAnchor] at @s as @a[distance=..20] if score @s PlayerID = @s PlayerID at @e[tag=GrapplingAnchor,limit=1,sort=nearest,distance=..1] run function items:item_abilities/grappling_hook/anchor/movement_1
execute as @e[tag=GrapplingAnchor] at @s at @a[distance=..1] if score @p PlayerID = @s PlayerID at @s run effect give @p minecraft:levitation 1 255 true
execute as @e[tag=GrapplingAnchor,scores={I_GrappleTime=5..},nbt={OnGround:1b}] at @s run function items:item_abilities/grappling_hook/anchor/kill
execute as @e[tag=GrapplingAnchor,scores={I_GrappleTime=5..}] at @s unless block ~ ~-.1 ~ air run function items:item_abilities/grappling_hook/anchor/kill
scoreboard players add @e[tag=GrapplingAnchor] I_GrappleTime 1