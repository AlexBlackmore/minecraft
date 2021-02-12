scoreboard players add @s EB_AnimBob 1
execute as @s[scores={EB_AnimBob=1..2}] at @s run tp @s ~ ~0.0002 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=3..5}] at @s run tp @s ~ ~0.0005 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=6..15}] at @s run tp @s ~ ~0.001 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=16..18}] at @s run tp @s ~ ~0.0005 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=19..20}] at @s run tp @s ~ ~0.0002 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=21..22}] at @s run tp @s ~ ~-0.0002 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=23..25}] at @s run tp @s ~ ~-0.0005 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=26..35}] at @s run tp @s ~ ~-0.001 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=36..38}] at @s run tp @s ~ ~-0.0005 ~ ~-1 ~
execute as @s[scores={EB_AnimBob=39..40}] at @s run tp @s ~ ~-0.0002 ~ ~-1 ~
scoreboard players set @s[scores={EB_AnimBob=40}] EB_AnimBob 0
tag @s add EBTemp