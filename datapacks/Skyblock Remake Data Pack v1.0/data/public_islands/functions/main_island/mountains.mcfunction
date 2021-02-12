#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @a[scores={SubLocation=10},tag=!Cheats_Teleported] at @s if block ~ ~ ~ minecraft:nether_portal run function cheats:teleports/to_dungeons_hub
execute as @a[scores={SubLocation=10},tag=!Cheats_Teleported,nbt={Dimension:"minecraft:the_nether"}] in minecraft:overworld run function cheats:teleports/to_dungeons_hub
tag @a remove Cheats_Teleported
#------------------------------------------#