## Random Chance at getting laser ##
execute if entity @p[distance=..12] run scoreboard players remove @s LapisLaserTime 1
execute if entity @s[scores={LapisLaserTime=-200}] at @s run function mobs:ai/lapis_zombie/laser_off
execute if entity @s[scores={LapisLaserTime=0}] at @s run function mobs:ai/lapis_zombie/laser_on
execute if entity @s[scores={LapisLaserTime=-199..0}] at @s run teleport @e[type=silverfish,tag=LapisLaser,distance=0..1.5,sort=nearest,limit=1] ~ ~1 ~