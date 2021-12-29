execute if entity @s[tag=GrapplingPass1] run function items:item_abilities/grappling_hook/if_thrown_1
tag @s add GrapplingPass1

kill @e[tag=GrapplingWatch,limit=1,sort=nearest,distance=..1]
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["GrapplingWatch"],Duration:2}
scoreboard players operation @e[tag=GrapplingWatch,limit=1,sort=nearest,distance=..1] PlayerID = @s PlayerID
execute as @e[tag=GrapplingWatch,sort=nearest] at @s as @e[tag=GrapplingHook,sort=nearest,distance=..33] if score @s PlayerID = @e[tag=GrapplingWatch,limit=1,sort=nearest,distance=..1] PlayerID facing entity @s feet run function items:item_abilities/grappling_hook/watch_rotate
tag @s remove ITUsed