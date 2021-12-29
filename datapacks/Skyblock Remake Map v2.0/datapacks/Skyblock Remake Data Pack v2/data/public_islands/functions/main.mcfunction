#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------NPCS-------------------#
execute as @a at @s if entity @e[tag=NPC,distance=..26] run function public_islands:npc/rotate1
#---------ISLAND SPECIFIC COMMANDS---------#
#0= private island, 1=hub island, 2=gold mine, 3=the barn, 4=mushroom desert, 5=the park, 6=spider's den, 7=blazing fortress, 8=the end, 20=deep caverns
execute if score $1Second TickTimer matches 0 as @a[tag=!LaunchPlayer] at @s run function public_islands:check_location_change
execute if entity @a[scores={Location=0}] run function public_islands:private_island/main
execute if entity @a[scores={Location=1}] run function public_islands:main_island/main
execute if entity @a[scores={Location=2}] run function public_islands:gold_mine/main
execute if entity @a[scores={Location=3}] run function public_islands:the_barn/main
execute if entity @a[scores={Location=4}] run function public_islands:mushroom_desert/main
execute if entity @a[scores={Location=5}] run function public_islands:the_park/main
execute if entity @a[scores={Location=6}] run function public_islands:spiders_den/main
execute if entity @a[scores={Location=7}] run function public_islands:blazing_fortress/main
execute if entity @a[scores={Location=8}] run function public_islands:the_end/main
execute if entity @a[scores={Location=9}] run function public_islands:dwarven_mines/main
execute if entity @a[scores={Location=20}] run function public_islands:deep_caverns/main

execute as @e[tag=LaunchEntity] at @s if block ~ ~-0.2 ~ barrier run function public_islands:launch_pads/end
execute as @e[tag=TravelTo,type=armor_stand] at @s if entity @a[distance=..10] run particle minecraft:happy_villager ~ ~-2 ~ 0.5 0.15 0.5 0.01 1 normal
#-------STOP ITEM FRAME INTERACTING--------#
execute at @a[scores={Location=1..}] at @e[type=minecraft:item_frame,distance=..6] run summon minecraft:falling_block ~ ~-0.5 ~ {BlockState:{Name:"minecraft:barrier"}}
#------------------------------------------#
