#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------FOLLOW RANGE---------------#
execute if score $1Second TickTimer matches 8 as @e[tag=NaturallySpawning,tag=DisabledRange,distance=..80] at @s as @p if score @s SubLocation = @e[tag=NaturallySpawning,sort=nearest,limit=1] SubLocation run function mobs:naturally_spawning/enable_range
execute if score $1Second TickTimer matches 8 as @e[tag=NaturallySpawning,tag=!DisabledRange,distance=..80] at @s as @p unless score @s SubLocation = @e[tag=NaturallySpawning,sort=nearest,limit=1] SubLocation run function mobs:naturally_spawning/disable_range
#------------------MOB AIS-----------------#
execute as @a at @s as @e[type=spider,tag=DasherSpider,distance=1.5..9] at @s run function mobs:ai/dasher_spider/raycast

execute if score $5Seconds TickTimer matches 1 as @a at @s as @e[type=magma_cube,tag=LargeMagmaCube,distance=..16] at @s facing entity @p feet run function mobs:ai/large_magma_cube/shoot

scoreboard players add @e[tag=HighLevelBone] BoneTimer 1
execute as @e[tag=HighLevelBone,scores={BoneTimer=200..}] at @s run function mobs:ai/high_level_skeleton/timer_end

execute as @e[tag=LapisZombie] at @s run function mobs:ai/lapis_zombie/main

execute as @a at @s as @e[tag=WeaverSpider,distance=0.1..12] run function mobs:ai/weaver_spider/main
execute as @e[tag=WeaverSpiderWeb] at @s as @a[distance=..1.5] run function mobs:ai/weaver_spider/web_hit_player

execute as @e[type=creeper,tag=SneakyCreeper,tag=!scStopInvis] at @s if entity @p[distance=..90] run function mobs:ai/sneaky_creeper/creeper_tick
execute if score $1Second TickTimer matches 2 as @a[tag=CreeperEffectCloudCheck] at @s unless entity @e[type=creeper,tag=SneakyCreeper,distance=..20] run function mobs:ai/sneaky_creeper/remove_cloud

execute if score $1Second TickTimer matches 3 as @e[type=wolf] at @s run data modify entity @s AngryAt set from entity @p[distance=..16] UUID
#------------------JINGLES-----------------#
execute as @a[scores={J_RareDrop=1..}] run function mobs:jingle/rare_drop
execute as @a[scores={J_SlayerKilled=1..}] run function mobs:jingle/slayer_killed
#------------------------------------------#