summon armor_stand ^ ^ ^1 {Small:1b,Invisible:1b,Tags:["10SecTimeout","Timeout","Motion_target"],Passengers:[{id:"minecraft:item",Age:5800,PickupDelay:32767,Tags:["WeaverSpiderWeb"],Item:{id:"minecraft:cobweb",Count:1b}}]}
execute as @e[tag=Motion_target,distance=..1.5,sort=nearest,limit=1] at @s rotated as @e[tag=WeaverSpider,distance=..1.5,sort=nearest,limit=1] run function skyblock:motion/motion_1
playsound minecraft:entity.snowball.throw hostile @a[distance=..8] ~ ~ ~ 1 0.5 1
scoreboard players set @s WeaverTimer 0
tag @s remove readytoshoot