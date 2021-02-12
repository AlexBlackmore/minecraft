tag @s add Motion_target
scoreboard players set @s Motion_speed 0
scoreboard players set Global Motion_speed 420
playsound minecraft:entity.snowball.throw hostile @a[distance=..8] ~ ~ ~ 1 0.5 1
particle minecraft:cloud ~ ~0.5 ~ 0.15 0.15 0.15 0.04 3
#deal X damage
function skyblock:motion/motion_1
data modify entity @s Motion[1] set value 0.6