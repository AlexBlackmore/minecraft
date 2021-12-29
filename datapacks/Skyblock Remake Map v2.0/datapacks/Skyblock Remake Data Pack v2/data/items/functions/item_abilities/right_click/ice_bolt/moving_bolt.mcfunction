execute as @e[tag=IceBolt,tag=!IceBoltLanded] at @s if block ~ ~ ~ #skyblock:allowed run tp @s ^ ^ ^1.2
execute as @e[tag=IceBolt2] at @s run particle minecraft:cloud ~ ~ ~ 0.05 0 0.05 0.001 1
execute as @e[tag=IceBolt1,tag=!IceBoltLanded] at @s run function items:item_abilities/right_click/ice_bolt/hit_entity
execute as @e[tag=IceBolt1,tag=!IceBoltLanded] at @s unless block ~ ~ ~ #skyblock:allowed run function items:item_abilities/right_click/ice_bolt/tag_landed