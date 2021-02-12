#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @a[nbt={Dimension:"minecraft:the_nether"}] in minecraft:overworld run function cheats:teleports/to_village
execute as @a at @s if block ~ ~ ~ minecraft:nether_portal run function cheats:teleports/to_village
#------------------------------------------#