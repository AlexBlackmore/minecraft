tag @s remove GrapplingStop
scoreboard players add @s I_GrappleDist 1
execute at @e[tag=GrapplingHook,distance=...75] if score @e[tag=GrapplingHook,distance=...5,limit=1] PlayerID = @s PlayerID run tag @s add GrapplingStop
execute positioned ^ ^ ^.1 unless entity @s[tag=GrapplingStop] run function items:item_abilities/grappling_hook/dist_get