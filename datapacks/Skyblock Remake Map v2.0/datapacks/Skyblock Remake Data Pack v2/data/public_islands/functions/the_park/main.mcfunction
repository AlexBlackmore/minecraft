#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @e[tag=TravelTo,tag=hub_island2,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..10] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:launch_pads/from/the_park
execute if entity @a[scores={SubLocation=26}] run function public_islands:the_park/howling_caves

execute as @e[tag=TravelTo,tag=InParkFromSpruce,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..3] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:the_park/launch_pads/from/spruce_woods
execute as @e[tag=TravelTo,tag=InParkFromDarkThicket,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..3] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:the_park/launch_pads/from/dark_thicket
execute as @e[tag=TravelTo,tag=InParkFromSavanna,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..3] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:the_park/launch_pads/from/savanna
execute as @e[tag=TravelTo,tag=InParkFromJungle,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..3] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:the_park/launch_pads/from/jungle

execute as @e[tag=TravelTo,tag=InParkToSpruce,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..3] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:the_park/launch_pads/to/spruce_woods
execute as @e[tag=TravelTo,tag=InParkToDarkThicket,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..3] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:the_park/launch_pads/to/dark_thicket
execute as @e[tag=TravelTo,tag=InParkToSavanna,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..3] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:the_park/launch_pads/to/savanna
execute as @e[tag=TravelTo,tag=InParkToJungle,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..3] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:the_park/launch_pads/to/jungle
execute as @e[tag=LaunchEntityPark] at @s if entity @s[nbt={OnGround:1b}] run function public_islands:the_park/launch_pads/end

function public_islands:map_regeneration/main_park
#------------------------------------------#
