# store this entity's location (0.0625 blocks in front of 0,0,0 in any direction)
tp @s ^ ^ ^0.0625
execute store result score @s Motion_x run data get entity @s Pos[0] 10000
execute store result score @s Motion_y run data get entity @s Pos[1] 10000
execute store result score @s Motion_z run data get entity @s Pos[2] 10000

# calculate and apply the final movement vector based on global speed * block speed
scoreboard players operation @s Motion_x *= Global Motion_speed
scoreboard players operation @s Motion_y *= Global Motion_speed
scoreboard players operation @s Motion_z *= Global Motion_speed

# tiny bit of extra upwards motion helps
#scoreboard players remove @s Motion_y 100000

execute store result entity @e[tag=Motion_target,sort=nearest,limit=1] Motion[0] double 0.00001 run scoreboard players get @s Motion_x
execute store result entity @e[tag=Motion_target,sort=nearest,limit=1] Motion[1] double 0.00001 run scoreboard players get @s Motion_y
execute store result entity @e[tag=Motion_target,sort=nearest,limit=1] Motion[2] double 0.00001 run scoreboard players get @s Motion_z

tag @e[tag=Motion_target,sort=nearest,limit=1] remove Motion_target
kill @s