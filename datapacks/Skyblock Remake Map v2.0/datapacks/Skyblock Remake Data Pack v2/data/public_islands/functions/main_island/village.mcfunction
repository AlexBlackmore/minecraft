#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @a[scores={SubLocation=1},nbt={Dimension:"minecraft:the_end"}] in minecraft:overworld run function cheats:teleports/to_private
execute as @a[scores={SubLocation=1}] at @s if block ~ ~ ~ minecraft:end_portal run function cheats:teleports/to_private

execute as @e[type=item] at @s if block ~ ~-1 ~ minecraft:end_portal run tp @s -2.5 70 -68.5
execute as @e[type=item] at @s if block ~ ~ ~ minecraft:end_portal run tp @s -2.5 70 -68.5

execute as @e[tag=NPCApprentice,type=minecraft:armor_stand] at @s if entity @p[distance=..20] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=NPCApprentice,type=minecraft:armor_stand] at @s unless entity @p[distance=..20] run data merge entity @s {CustomNameVisible:0b}

function public_islands:map_regeneration/forage/main
#------------------------------------------#