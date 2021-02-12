scoreboard players set @a[scores={jump=1..}] SoupJumpClock2 20
scoreboard players remove @a[scores={SoupJumpClock=1..}] SoupJumpClock 1
scoreboard players remove @a[scores={SoupJumpClock2=1..}] SoupJumpClock2 1
execute as @a[scores={SoupJumpClock2=8..17,SoupJumpClock=31..}] at @s run tp @s ~ ~.25 ~