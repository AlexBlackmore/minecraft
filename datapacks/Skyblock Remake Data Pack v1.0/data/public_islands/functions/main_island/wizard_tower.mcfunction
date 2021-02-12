#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
execute as @a[scores={SubLocation=13},nbt={Dimension:"minecraft:the_end"}] in minecraft:overworld run function cheats:teleports/to_wizard_tower
execute as @a[scores={SubLocation=13}] at @s if block ~ ~ ~ minecraft:end_portal run function cheats:teleports/to_wizard_tower
#------------------------------------------#