execute positioned ^ ^ ^.25 if block ~ ~ ~ air run scoreboard players add @s I_BWBuildDist 1
execute positioned ^ ^ ^.25 unless block ~ ~ ~ air positioned ^ ^ ^-.25 run function items:item_abilities/builders_wand/click/raycast/5000000raycast
execute positioned ^ ^ ^.25 if block ~ ~ ~ air unless entity @s[scores={I_BWBuildDist=23..}] run function items:item_abilities/builders_wand/click/raycast/25000000raycast

