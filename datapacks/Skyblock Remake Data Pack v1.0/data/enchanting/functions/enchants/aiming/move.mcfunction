#FUNCTION CODED BY mike#7789

# aiming markers
execute unless entity @e[tag=m1] run summon area_effect_cloud ~ ~ ~ {Duration:1000000,Tags:["m1","AimingCloud"]}
execute unless entity @e[tag=m2] run summon area_effect_cloud ~ ~ ~ {Duration:1000000,Tags:["m2","AimingCloud"]}

# marker1 on arrow
tp @e[type=area_effect_cloud,tag=m1] @s

# put arrow motions to scoreboard
execute store result score #arrow_mx E_BowAiming run data get entity @s Motion[0] 1000
execute store result score #arrow_my E_BowAiming run data get entity @s Motion[1] 1000
execute store result score #arrow_mz E_BowAiming run data get entity @s Motion[2] 1000

# arrow position to scoreboard
execute store result score #arrow_px E_BowAiming run data get entity @s Pos[0] 1000
execute store result score #arrow_py E_BowAiming run data get entity @s Pos[1] 1000
execute store result score #arrow_pz E_BowAiming run data get entity @s Pos[2] 1000

# vector = motion + position
scoreboard players operation #v1x E_BowAiming = #arrow_mx E_BowAiming
scoreboard players operation #v1x E_BowAiming += #arrow_px E_BowAiming
scoreboard players operation #v1y E_BowAiming = #arrow_my E_BowAiming
scoreboard players operation #v1y E_BowAiming += #arrow_py E_BowAiming
scoreboard players operation #v1z E_BowAiming = #arrow_mz E_BowAiming
scoreboard players operation #v1z E_BowAiming += #arrow_pz E_BowAiming

# set marker2 position to vector
execute store result entity @e[type=area_effect_cloud,tag=m2,limit=1] Pos[0] double 0.001 run scoreboard players get #v1x E_BowAiming
execute store result entity @e[type=area_effect_cloud,tag=m2,limit=1] Pos[1] double 0.001 run scoreboard players get #v1y E_BowAiming
execute store result entity @e[type=area_effect_cloud,tag=m2,limit=1] Pos[2] double 0.001 run scoreboard players get #v1z E_BowAiming

# marker1 (on arrow) look at marker2 then move ^ ^ ^v
# v = 1.2 (default 1)
execute as @e[type=area_effect_cloud,tag=m1] at @s facing entity @e[type=area_effect_cloud,tag=m2,limit=1] feet positioned ^ ^ ^1 run tp @s ~ ~ ~

# marker2 look at target from arrow then move ^ ^ ^v
execute as @s at @s facing entity @e[tag=AimingTarget,limit=1,sort=nearest] feet positioned ^ ^ ^1 run tp @e[type=area_effect_cloud,tag=m2] ~ ~ ~

# if marker1 distance away from marker2 is < d, tp marker to marker2
# d = 0.3 (higher d = sharper turn) default 0.08
execute as @e[type=area_effect_cloud,tag=m1] at @s if entity @e[type=area_effect_cloud,tag=m2,distance=..0.3] run tp @s @e[type=area_effect_cloud,tag=m2,limit=1]

# else, tp marker1 closer to marker2 by d
execute as @e[type=area_effect_cloud,tag=m1] at @s unless entity @e[type=area_effect_cloud,tag=m2,distance=..0.3] facing entity @e[type=area_effect_cloud,tag=m2,limit=1] feet positioned ^ ^ ^0.3 run tp @s ~ ~ ~

# marker pos - arrow pos = new arrow motion
execute store result score #m1x E_BowAiming run data get entity @e[type=area_effect_cloud,tag=m1,limit=1] Pos[0] 1000
execute store result score #m1y E_BowAiming run data get entity @e[type=area_effect_cloud,tag=m1,limit=1] Pos[1] 1000
execute store result score #m1z E_BowAiming run data get entity @e[type=area_effect_cloud,tag=m1,limit=1] Pos[2] 1000
scoreboard players operation #m1x E_BowAiming -= #arrow_px E_BowAiming
scoreboard players operation #m1y E_BowAiming -= #arrow_py E_BowAiming
scoreboard players operation #m1z E_BowAiming -= #arrow_pz E_BowAiming
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #m1x E_BowAiming
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #m1y E_BowAiming
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #m1z E_BowAiming