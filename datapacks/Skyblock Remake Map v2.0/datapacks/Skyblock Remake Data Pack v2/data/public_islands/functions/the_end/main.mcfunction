#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @e[tag=TravelTo,tag=spiders_den3,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..10] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:launch_pads/from/the_end
#----------------NEST WARP-----------------#
execute as @e[tag=NestWarp] at @s if entity @p[distance=..10] run function public_islands:the_end/nest_warp/main
#---------------MOB SPAWNING---------------#
execute if score $25Seconds TickTimer matches 1 run function public_islands:the_end/natural_spawns
#----------------ALTAR EYES----------------#
scoreboard players remove @a[scores={End_EyeCool=1..}] End_EyeCool 1
execute if score $1Second TickTimer matches 0 unless score Global End_DragSeq matches 1.. at @e[tag=End_EyeStand] run particle minecraft:portal ~ ~0.7 ~ 0 0 0 0.01 1 normal
execute if score $1Second TickTimer matches 0 as @a[scores={Location=8,SubLocation=35}] at @e[tag=End_EyeStand] if score @e[tag=End_EyeStand,sort=nearest,limit=1] End_EyeID = @s PlayerID run particle minecraft:witch ~ ~1.3 ~ 0 0 0 0.01 1 normal
#-----------START DRAG SEQUENCE------------#
execute if score Global End_DragSeq matches 1.. run function public_islands:the_end/summon_sequence/main
execute if score Global End_DragSeq matches ..-1 run function public_islands:the_end/main_sequence/main
execute as @e[tag=End_EggBlock] at @s run function public_islands:the_end/summon_sequence/egg_block_travel
#------------------------------------------#