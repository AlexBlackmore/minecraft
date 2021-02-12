#Add the intimidation artifact tag to the @a selector to prevent these players from being targetted
execute at @s positioned ^ ^ ^3 if entity @a[distance=..3] run scoreboard players add @s Motion_speed 2
execute at @s positioned ^ ^ ^7.5 if entity @a[distance=..3] run scoreboard players add @s Motion_speed 2
execute at @s positioned ^ ^ ^9 if entity @a[distance=..2.5] run scoreboard players add @s Motion_speed 2
scoreboard players remove @s[scores={Motion_speed=1..}] Motion_speed 1
execute as @s[scores={Motion_speed=120..}] at @s run function mobs:ai/dasher_spider/dash