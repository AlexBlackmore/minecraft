execute positioned ^ ^ ^.001 unless block ~ ~ ~ air positioned ^ ^ ^-.001 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["0raycast"]}
execute positioned ^ ^ ^.001 unless block ~ ~ ~ air positioned ^ ^ ^-.001 run function items:item_abilities/builders_wand/click/raycast/10000raycast
execute positioned ^ ^ ^.001 if block ~ ~ ~ air run function items:item_abilities/builders_wand/click/raycast/100000raycast


