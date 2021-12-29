execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["EBFace"],Particle:"item apple"}
execute as @e[tag=EBFace,limit=1,sort=nearest,distance=..0.1,type=area_effect_cloud] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
execute store result score $fp EB_Anim run data get entity @e[tag=EBFace,limit=1,sort=nearest,distance=..0.1,type=area_effect_cloud] Rotation[0]
execute store result score $fEB EB_Anim run data get entity @s Rotation[0]
scoreboard players operation $fEB EB_Anim -= $fp EB_Anim
scoreboard players add $fEB EB_Anim 180
scoreboard players operation $fEB EB_Anim %= c360 Constant
scoreboard players remove $fEB EB_Anim 180
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches 20.. run function enchanting:enchanting_table/book_animation/face/n15
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches 10..19 run function enchanting:enchanting_table/book_animation/face/n7
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches 5..9 run function enchanting:enchanting_table/book_animation/face/n4
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches 1..4 run function enchanting:enchanting_table/book_animation/face/n1
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches ..-20 run function enchanting:enchanting_table/book_animation/face/15
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches -19..-10 run function enchanting:enchanting_table/book_animation/face/7
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches -9..-5 run function enchanting:enchanting_table/book_animation/face/4
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches -4..-1 run function enchanting:enchanting_table/book_animation/face/1
execute as @s[tag=!EBTemp] at @s if score $fEB EB_Anim matches 0 run function enchanting:enchanting_table/book_animation/face/bob
tag @s remove EBTemp
kill @e[tag=EBFace,limit=1,sort=nearest,distance=..0.1,type=area_effect_cloud] 

scoreboard players set @s[scores={EB_AnimBob=40}] EB_AnimBob 0