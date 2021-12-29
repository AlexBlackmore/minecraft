execute at @e[tag=GrapplingAnchor,sort=nearest] if score @s PlayerID = @e[tag=GrapplingAnchor,limit=1,sort=nearest,distance=..1] PlayerID run kill @e[tag=GrapplingAnchor,sort=nearest,distance=..1]
summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Invisible:1b,Tags:["GrapplingAnchor"],CustomName:'{"text":"Jump","color":"green","bold":true,"italic":false}'}
summon minecraft:area_effect_cloud ~ ~ ~ {OnGround:0b,Tags:["GrapplingTempAnchor"],Duration:2}
tp @e[tag=GrapplingAnchor,limit=1,sort=nearest] @e[tag=GrapplingWatch,limit=1,sort=nearest]
scoreboard players operation @s I_GrappleDist = @e[tag=GrapplingWatch,limit=1,sort=nearest] I_GrappleDist
scoreboard players operation @e[tag=GrapplingAnchor,limit=1,sort=nearest] I_GrappleDist = @e[tag=GrapplingWatch,limit=1,sort=nearest] I_GrappleDist

execute as @e[tag=GrapplingAnchor,limit=1,sort=nearest,distance=..1,scores={I_GrappleDist=20..}] at @s unless block ~ ~-.5 ~ air run function items:item_abilities/grappling_hook/throw/throw
execute as @e[tag=GrapplingAnchor,limit=1,sort=nearest,distance=..1,scores={I_GrappleDist=20..}] at @s if block ~ ~-.5 ~ air run function items:item_abilities/grappling_hook/throw/jump
execute as @e[tag=GrapplingAnchor,limit=1,sort=nearest,distance=..1,scores={I_GrappleDist=..19}] at @s run function items:item_abilities/grappling_hook/throw/exception

kill @e[tag=GrapplingWatch,tag=GrapplingSee]
##########################Get rid of This to disable Cooldown##############################
scoreboard players set @s I_GrappleCool 40