#===================NOTE===================#
# This function was coded by TheCarotte    #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MOB COUNTING---------------#
execute as @e[tag=WeakSplitterCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=SplitterSpider,distance=..25]
execute as @e[tag=MediumSplitterCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=SplitterSpider,distance=..25]
execute as @e[tag=StrongSplitterCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=SplitterSpider,distance=..25]
execute as @e[tag=WeakWeaverCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=WeaverSpider,distance=..25]
execute as @e[tag=MediumWeaverCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=WeaverSpider,distance=..25]
execute as @e[tag=StrongWeaverCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=WeaverSpider,distance=..25]
execute as @e[tag=StrongDasherCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=DasherSpider,distance=..25]
execute as @e[tag=WeakDasherCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=DasherSpider,distance=..25]
execute as @e[tag=VoraciousCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=VoraciousSpider,distance=..25]
execute as @e[tag=JockeyCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=JockeySkeleton,distance=..25]
execute as @e[tag=JockeyCounter] at @s store result score @s PI_SpidersDen if entity @e[tag=SpiderJockey,distance=..25]
#---------------SPIDERS DEN----------------#
execute as @e[tag=WeakSplitterCounter] at @s if score @s PI_SpidersDen matches ..2 run function mobs:spawners/spiders_den/spawn_weak_splitter
execute as @e[tag=MediumSplitterCounter] at @s if score @s PI_SpidersDen matches ..2 run function mobs:spawners/spiders_den/spawn_medium_medium_splitter
execute as @e[tag=StrongSplitterCounter] at @s if score @s PI_SpidersDen matches ..2 run function mobs:spawners/spiders_den/spawn_strong_splitter
execute as @e[tag=WeakWeaverCounter] at @s if score @s PI_SpidersDen matches ..2 run function mobs:spawners/spiders_den/spawn_weak_weaver
execute as @e[tag=MediumWeaverCounter] at @s if score @s PI_SpidersDen matches ..2 run function mobs:spawners/spiders_den/spawn_medium_weaver
execute as @e[tag=StrongWeaverCounter] at @s if score @s PI_SpidersDen matches ..2 run function mobs:spawners/spiders_den/spawn_strong_weaver
execute as @e[tag=StrongDasherCounter] at @s if score @s PI_SpidersDen matches ..2 run function mobs:spawners/spiders_den/spawn_strong_dasher
execute as @e[tag=WeakDasherCounter] at @s if score @s PI_SpidersDen matches ..2 run function mobs:spawners/spiders_den/spawn_weak_dasher
execute as @e[tag=VoraciousCounter] at @s if score @s PI_SpidersDen matches ..1 run function mobs:spawners/spiders_den/spawn_voracious
execute as @e[tag=JockeyCounter] at @s if score @s PI_SpidersDen matches ..1 run function mobs:spawners/spiders_den/spawn_jockey
#------------------------------------------#