particle minecraft:cloud ~ ~ ~ 0 0 0 0.15 20
tag @s add IceBoltLanded
execute positioned ^ ^ ^0.3 run tag @e[tag=IceBolt2,tag=!IceBoltLanded,sort=nearest,limit=1] add IceBoltLanded
execute positioned ^ ^ ^0.6 run tag @e[tag=IceBolt3,tag=!IceBoltLanded,sort=nearest,limit=1] add IceBoltLanded
execute positioned ^ ^ ^0.9 run tag @e[tag=IceBolt4,tag=!IceBoltLanded,sort=nearest,limit=1] add IceBoltLanded
execute positioned ^ ^ ^1.2 run tag @e[tag=IceBolt5,tag=!IceBoltLanded,sort=nearest,limit=1] add IceBoltLanded