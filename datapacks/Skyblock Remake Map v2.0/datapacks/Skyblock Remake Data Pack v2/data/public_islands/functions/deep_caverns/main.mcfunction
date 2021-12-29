#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @e[tag=TravelTo,tag=gold_mine2,type=armor_stand] at @s as @a[tag=!LaunchPlayer,distance=..10] at @s if block ~ ~-1 ~ minecraft:slime_block run function public_islands:launch_pads/from/deep_caverns

execute if entity @a[scores={SubLocation=39}] run function public_islands:deep_caverns/gunpowder_mines
execute if entity @a[scores={SubLocation=40}] run function public_islands:deep_caverns/lapis_quarry
execute if entity @a[scores={SubLocation=41}] run function public_islands:deep_caverns/pigmens_den
execute if entity @a[scores={SubLocation=42}] run function public_islands:deep_caverns/slime_hill
execute if entity @a[scores={SubLocation=43}] run function public_islands:deep_caverns/diamond_reserve
execute if entity @a[scores={SubLocation=44}] run function public_islands:deep_caverns/obsidian_sanctuary
#------------------------------------------#