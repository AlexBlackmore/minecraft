#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------PLACE BLOCK----------------#
tag @s add PlaceEnchanting
execute positioned ~ ~1.62 ~ run function enchanting:enchanting_table/block/place/ray
execute if entity @s[tag=!PlaceEnchantingSuccess] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:command_block[facing=west]{Command:"function enchanting:enchanting_table/block/place/switch",auto:1b} replace minecraft:enchanting_table
tag @s remove PlaceEnchanting
tag @s remove PlaceEnchantingSuccess
advancement revoke @s only enchanting:place_enchanting_table
#------------------------------------------#